___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Switch Realtime Events",
  "categories": ["DATA_WAREHOUSING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACXCAYAAAD3XaJHAAAACXBIWXMAAAWJAAAFiQFtaJ36AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAARaSURBVHgB7d3LTRtRFIDhAw7seGTHAiyngyQVkDSQdJBHA0E0wKMCqABSAXRAssuSVIBlQGIVHC+RsHMuYSJAZjwOnplz7v0/yXIkZ8Hil8/4Hj9EAAAAAAAAAAAAAAAAAAAAAAAAEjIluKfZbH7RuzW9tfTW1tt+r9fb7SpBYYR1h0a1oXebQx467nQ6rwSFNQQ3lpaWWo1G4/CxhxcWFn6rH4JCpgU3Zmdnj0b8l1VBYYQl/0ZgK+//TE1NLQgKSz6sMAJl+HUVniD5sGZmZvYEE5d0WCsrKx91xK0KJi7ZsMII1Kg2BKVINiwdgZsy4oId/y/JsG5H4AdBaZILa1ExAsuXXFjz8/Mjz6zwdEmFdXtmtSYoXVJhFVjbYEKSCavI2gaTk0RYrG2ql0RYOgIPBJWKPqxwZqV3LwWVijos1jb1iTos1jb1iTYs1jb1ijIsRmD9ogxLXwWGj3C1BLWJLizWNjZEFxZrGxuiCou1jR3RhMXaxpZowmIE2hJFWLdf5NESmOE+LF4F2uQ+LNY2NrkOi7WNXW7DYm1jm9uwGIG2uQxreXl5lRFom8uwpqen+YYY49yFxdrGB1dhsbbxw1VYrG38cBMWaxtfXITFCPTHRVi3Z1aLAjfMh8XaxifTYbG28ct0WKxt/DIbFmsb38yGxdrGN5Nhsbbxz+oz1keBa1bDaglcsxpWW+Ca1bC+Clwz+5vQeuK+b+y4oat/z7EYMBgMfl5dXe1cXFy0xSjTPzYe1jl67PCu3+/XvifUqMLfYOm7TLvX19dvzs/PTcT+EL9iX1A4sNXIrb0frNvr9V50lRjDb0L7tjg3N/deDCIs53REt8QgwvLvRAwiLN9O9LrvuxhEWL5ttZUY9Ezgkp5lHZ2enpo9SOYZy6lGo/FZDCMsn8yOwAxh+XPS6XQ2xTjCckZfBb4VBwjLlx3rIzBDWH6EM6stcYKw/AgX7OaWzY8hLAd0H7ivF+yu3vxIWPadaFhuRmCGsOwzf2Y1DCsdw3Rtc2B5bZOHZyzDdG2zLk4Rll0uR2CGsGxysbbJQ1gGeVnb5CEse1yPwAxh2RLWNjsSAcIyRI8X1j2tbfIQlhFhbaNnVocSCcKyweXaJg9h2RDFBftdhFUzj+9cKIKw6tWNbQRmCKteu7GNwAxh1cf92iYPYdUkhrVNHsKqR3SvAh8irOpFPQIzhFWxfr9v+jsXJoWwKhTOrM7Ozr5JAgirOtGtbfIQVnWiv2C/i7AqEOvaJg9hle8ypRGYIazybac0AjOEVa5wZhXFW43HRVglin1tk4ewypPUq8CHCKscSaxt8hBWCXRt80kSR1iTt6drG5M/Q1Ilwpqs8IHTbQFhFTUYDEZ9kHSgt82UL9jv4hdWx9BsNn/p3fMhD4WowtomibfEFMEz1hj0WSuEMxjyUJsReB9hjSF8BF4Deh1+eUv+BnYZ/h0OQhmBAAAAAAAAAAAAAAAAAAAAAAAAACbrD87ZGJzFdja/AAAAAElFTkSuQmCC"
  },
  "description": "Provides the ability to send an API Request containing the information configured in the tag to Switch to be forwarded as server side events.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "customerFieldsGroup",
    "displayName": "Customer Fields",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "requiredCustomerFields",
        "displayName": "Required Fields",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "fieldName",
              "displayName": "Field Name",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "email",
                  "displayValue": "Email"
                },
                {
                  "value": "phone",
                  "displayValue": "Phone Number"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "TEXT",
              "name": "fieldValue",
              "displayName": "Value",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": false
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "enablingConditions": [
              {
                "paramName": "useCookieValues",
                "paramValue": false,
                "type": "EQUALS"
              }
            ],
            "errorMessage": "Field Value required if not using session data."
          }
        ],
        "help": "At least one of these fields is required. Switch will automatically hash values passed in."
      },
      {
        "type": "PARAM_TABLE",
        "name": "optionalCustomerFields",
        "displayName": "Additional Customer Fields",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "fieldName",
              "displayName": "Field Name",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "first_name",
                  "displayValue": "First Name"
                },
                {
                  "value": "last_name",
                  "displayValue": "Last Name"
                },
                {
                  "value": "email_google",
                  "displayValue": "Email Google (Google specific formatting)"
                },
                {
                  "value": "address",
                  "displayValue": "Address"
                },
                {
                  "value": "city",
                  "displayValue": "City"
                },
                {
                  "value": "state_province",
                  "displayValue": "State / Province"
                },
                {
                  "value": "postal_code",
                  "displayValue": "Postal Code"
                },
                {
                  "value": "country",
                  "displayValue": "Country"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "TEXT",
              "name": "fieldValue",
              "displayName": "Value",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "CHECKBOX",
              "name": "hashValue",
              "checkboxText": "Enforce Hashing",
              "simpleValueType": true,
              "help": "Uncheck to skip hashing. Values that are already hashed will be skipped. Switch will also automatically hash certain input values like email.",
              "enablingConditions": [],
              "defaultValue": true
            },
            "isUnique": false
          }
        ],
        "help": "Hashing on these fields is optional"
      }
    ],
    "help": "These fields correspond with the \u0027Customer\u0027 object in the Switch Events API."
  },
  {
    "type": "GROUP",
    "name": "conversionFieldsGroup",
    "displayName": "Conversion Fields",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "conversionName",
        "displayName": "Event name",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "The name of the event being sent."
      },
      {
        "type": "PARAM_TABLE",
        "name": "additionalConversionFields",
        "displayName": "Additional event properties",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "fieldName",
              "displayName": "Field Name",
              "macrosInSelect": false,
              "selectItems": [
                {
                  "value": "date_time",
                  "displayValue": "Date Timestamp Override (current time of tag fire will be used if blank)"
                },
                {
                  "value": "unique_id",
                  "displayValue": "Event Unique ID"
                },
                {
                  "value": "currency",
                  "displayValue": "Currency (3 letter code)"
                },
                {
                  "value": "value",
                  "displayValue": "Value"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "TEXT",
              "name": "fieldValue",
              "displayName": "Value",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": false
          }
        ],
        "help": "Optional additional event properties as defined in the Switch Events API."
      }
    ],
    "help": "These fields correspond with the \u0027Conversion\u0027 object in the Switch Events API."
  },
  {
    "type": "GROUP",
    "name": "extraFieldsGroup",
    "displayName": "Extra Fields",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "extrasFields",
        "displayName": "These fields correspond with the \u0027Extras\u0027 object in the Switch Events API.",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "fieldName",
              "displayName": "Field Name",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "TEXT",
              "name": "fieldValue",
              "displayName": "Field Value",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "CHECKBOX",
              "name": "hashValue",
              "checkboxText": "Enforce Hashing",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "This corresponds with the \"Extras\" object, and is free form to send additional information not covered by the above sections."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "configurationFieldsGroup",
    "displayName": "Configuration Fields",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "apiKey",
        "displayName": "Switch API Key",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "pipelineId",
        "displayName": "Pipeline ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "pixelId",
        "displayName": "Switch Pixel ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "pixelUrl",
        "displayName": "First Party Pixel Domain",
        "simpleValueType": true,
        "valueHint": "pixel.clientwebsite.com (no https or slashes needed)",
        "help": "This value should only be set if Switch has setup the Boost pixel to fire from within the clients infrastructure via DNS records. \u003cstrong\u003eDefaults to api.s10h.io\u003c/strong\u003e"
      },
      {
        "type": "CHECKBOX",
        "name": "useCookieValues",
        "checkboxText": "Enhance with Switch Session Data",
        "simpleValueType": true,
        "help": "Enabling this option will automatically enhance the event with fields available in the session cookie that is generated by the Switch Session Data Tag. \u003cstrong\u003eAny values set in this tag will be preferred with session cookie data being used to fill in gaps.\u003c/strong\u003e"
      },
      {
        "type": "TEXT",
        "name": "cookieName",
        "displayName": "Cookie Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "useCookieValues",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "defaultValue": "SwitchTempData"
      },
      {
        "type": "CHECKBOX",
        "name": "deleteCookieData",
        "checkboxText": "Delete Cookie Data",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "useCookieValues",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "This will wipe the secure cookie data after the event happens.",
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "debugMode",
        "checkboxText": "Enable Debug Mode",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Will display additional logging about the api call in the console."
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "automaticMode",
    "checkboxText": "Boost Automatic Mode",
    "simpleValueType": true,
    "help": "Automatic mode will monitor the page and capture advertising identifiers automatically for submission.",
    "defaultValue": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const encodeUriComponent = require('encodeUriComponent');
const JSON = require('JSON');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');

const apiKey = data.apiKey;
const debugMode = data.debugMode;
const pipelineId = data.pipelineId;
const pixelId = data.pixelId;
const pixelUrl = data.pixelUrl;
const automaticMode = data.automaticMode;

function fireEvent() {
  callInWindow('Switch.sendTemplateEvent', data);
  if (debugMode) {
    log('Switch Realtime API - fired with payload: ' + JSON.stringify(data));
  }
  data.gtmOnSuccess();
}

function init() {
  if (!apiKey || !pipelineId) {
    log('Missing API key or Pipeline ID for realtime event API');
    data.gtmOnFailure();
    return;
  }

  // We check window.__sgQueue (an array created by createQueue() in Switch
  // Boost) instead of window.Switch directly. copyFromWindow returns a deep
  // copy of the value, and it returns undefined for class instances with
  // private fields like the real Switch — so checking 'Switch' would falsely
  // report it missing once pixel.js has swapped the stub for the real
  // instance. __sgQueue is a plain array, always serializable, and its
  // presence proves Switch Boost has run on this page. callInWindow then
  // dispatches to either the stub or the real instance without serialization.
  if (copyFromWindow('__sgQueue')) {
    if (debugMode) log('Switch contract present, firing');
    fireEvent();
    return;
  }

  // Switch Boost hasn't run yet on this page. Inject pixel.js ourselves as
  // defense-in-depth, then fire on success. This is the rare fallback path.
  if (debugMode) log('Switch Boost not present, embedding pixel and firing on load');
  embedScripts(
    function () { fireEvent(); },
    function () {
      log('Switch Realtime unable to initialize / fire API call.');
      data.gtmOnFailure();
    }
  );
}

function embedScripts(onSuccess, onFail) {
  const options = automaticMode ? "&auto=true" : "&auto=false";
  const cacheKey = "switch-" + pixelId;
  const urlForPixel = pixelUrl ? pixelUrl : 'api.s10h.io';
  const scriptUrl = 'https://' + urlForPixel + '/pixel.js?id=' + encodeUriComponent(pixelId) + options;
  
  // Graceful fallback for custom domains
  // Checks if GTM has permission to inject this specific URL
  if (queryPermission('inject_script', scriptUrl)) {
    injectScript(scriptUrl, onSuccess, onFail, cacheKey);
  } else {
    log('Switch Error: Permission denied for ' + scriptUrl + '. If using a custom domain, please add it to the "Injects Scripts" Permissions tab in this Template.');
    onFail();
  }
}

init();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "Switch"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "Switch.sendTemplateEvent"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "Switch.deleteSecureCookie"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "Switch.getSecureCookieValues"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__sgQueue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://api.s10h.io/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Fires immediately when Switch exists
  code: |
    let templateCalled = false;
    let injectCalled = false;

    mock('copyFromWindow', function (key) {
      if (key === '__sgQueue') return [];   // truthy array — proves Switch Boost ran
      return undefined;
    });
    mock('callInWindow', function (path) {
      if (path === 'Switch.sendTemplateEvent') templateCalled = true;
    });
    mock('injectScript', function () { injectCalled = true; });

    runCode({
      apiKey: 'k',
      pipelineId: 'p',
      pixelId: 'x'
    });

    assertThat(templateCalled).isTrue();
    assertThat(injectCalled).isFalse();
    assertApi('gtmOnSuccess').wasCalled();
- name: Embeds and fires when Switch missing
  code: |-
    let templateCalled = false;
    let injectedUrl = null;

    mock('copyFromWindow', function () { return undefined; });
    mock('callInWindow', function (path) {
      if (path === 'Switch.sendTemplateEvent') templateCalled = true;
    });

    // ADD THIS LINE
    mock('queryPermission', function() { return true; });

    mock('injectScript', function (url, onSuccess) {
      injectedUrl = url;
      onSuccess();
    });
    runCode({
      apiKey: 'k',
      pipelineId: 'p',
      pixelId: 'x',
      automaticMode: false
    });
    assertThat(injectedUrl).isDefined();
    assertThat(injectedUrl).contains('&auto=false');
    assertThat(templateCalled).isTrue();
    assertApi('gtmOnSuccess').wasCalled();
- name: Fails fast on missing credentials
  code: |-
    let templateCalled = false;
    let injectCalled = false;

    mock('callInWindow', function () { templateCalled = true; });
    mock('injectScript', function () { injectCalled = true; });

    runCode({ pipelineId: 'p' }); // missing apiKey

    assertThat(templateCalled).isFalse();
    assertThat(injectCalled).isFalse();
    assertApi('gtmOnFailure').wasCalled();
- name: Fails gracefully when custom domain lacks permission
  code: "let templateCalled = false;\nlet injectCalled = false;\n\nmock('copyFromWindow',\
    \ function () { return undefined; });\nmock('callInWindow', function () { templateCalled\
    \ = true; });\n\n// Force the permission check to fail\nmock('queryPermission',\
    \ function() { return false; }); \n\nmock('injectScript', function () { injectCalled\
    \ = true; });\n\nrunCode({\n  apiKey: 'k',\n  pipelineId: 'p',\n  pixelId: 'x',\n\
    \  pixelUrl: 'unauthorized.pixel.com'\n});\n\n// Verify that it aborted the injection\
    \ and failed gracefully\nassertThat(templateCalled).isFalse();\nassertThat(injectCalled).isFalse();\n\
    assertApi('gtmOnFailure').wasCalled();"


___NOTES___

Created on 5/26/2025, 1:00:48 PM


