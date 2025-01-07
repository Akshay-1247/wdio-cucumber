import { Given, When, Then } from "@wdio/cucumber-framework";
import chai from "chai";
const expect = chai.expect;

Given(/^Google page is opened/, async function () {

    console.log("before opening browser");
    await browser.maximizeWindow()
    await browser.url("https://www.google.com")
})

When(/^Search with (.*)$/, async function (searchItem) {

    console.log('searchItem:', searchItem)
    let ele = await $(`[name=q]`)
    await ele.setValue(searchItem)
    await browser.keys('Enter')
})

Then(`Click on the first search result`, async function () {

    let ele = await $('<h3>')
    await ele.click()
})

Then(/^URL should match (.*)$/,async function (expectedUrl) {
    console.log('expectedUrl:',expectedUrl);
    let url = await browser.getUrl()
    expect(url).to.equal(expectedUrl)    
})