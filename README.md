**Introduction:**

  

The NashidSDK is a library designed to streamline document data extraction and authenticity verification within iOS applications. This comprehensive SDK encompasses four primary steps: Optical Character Recognition (OCR), Near Field Communication (NFC) reader, liveness detection, and document photo comparison. By integrating the NashidSDK into your application, you can enhance security measures and improve the efficiency of identity verification processes.

  

**Integration Steps:**

  

1.  **Prerequisites:**

  

*   Ensure that your iOS application targets iOS 13.0 or higher and xcode 13 or higher

  

2.  **Installation:**

*   To integrate the NashidSDK into your project, simply add the following CocoaPod to your Podfile:

  

    pod 'Nashid\_SDK', :git => "[https://github.com/Nashid-Enterprises/verify-ios-sdk-public.git](https://github.com/Nashid-Enterprises/verify-ios-sdk-public.git)"

  

3.  **Add script inside the pod file (End of the file):**

```
    post\_install do |installer|

        installer.generated\_projects.each do |project|

            project.targets.each do |target|

                target.build\_configurations.each do |config|

                    config.build\_settings\['IPHONEOS\_DEPLOYMENT\_TARGET'\] = '13.0'

                 end

            end

         end

         installer.pods\_project.targets.each do |target|

            target.build\_configurations.each do |config|

              config.build\_settings\['DEBUG\_INFORMATION\_FORMAT'\] = 'dwarf-with-dsym'

              config.build\_settings\['OTHER\_SWIFT\_FLAGS'\] = '-no-verify-emitted-module-interface'

              config.build\_settings\['BUILD\_LIBRARY\_FOR\_DISTRIBUTION'\] = 'YES'

          end

        end

  end
```
**Note:** The app's Info.plist must contain an NSCameraUsageDescription key with a string value explaining to the user how the app uses this data.

  

4.  **Change build Setting:**

*   Go to **Build Settings** and search **User Script Sandboxing** and **SET value No**

  

**SDK Features**:

  

1.  **OCR (Optical Character Recognition):**

*   Extracts text information from document images using advanced OCR techniques.
*   Recognizes and extracts crucial data such as names, dates of birth, expiry dates, and identification numbers from documents.
    

2.  **NFC (Near Field Communication) Reader:**

*   Enables seamless reading of data from NFC-enabled documents such as e-passports or identity cards.
*   Facilitates quick and secure retrieval of document information using NFC technology.

3.  **Liveness Detection:**

*   Verifies the liveness of individuals by analyzing facial features and performing biometric checks.
*   Ensures that individuals interacting with the application are physically present, preventing spoofing or fraudulent attempts.  

4.  **Document Photo Comparison:**

*   Compares the liveness photo captured during the verification process with the photo extracted from the document.
*   Enhances security measures by determining if the individual's face matches the photo in the document, thereby preventing identity fraud.

Upon completion, the library provides a comprehensive result containing all extracted document data, including text information, NFC data, liveness verification status, and the outcome of the document photo comparison. This consolidated result is suitable for identity verification or document processing workflows.

  
**Usage Examples:**

Import the framework

```import IDVSDK```

To initialize the NashidSDK and access its functionalities, use the following code snippet:

  
```
NashidSDK.shared.initializeSDK(token: "YOUR\_SDK\_TOKEN", id: "YOUR\_SDK\_ID", baseUrl: END\_POINT\_URL, employeeEmail: EMAIL, languageId: LANGUAGE\_ID)
```
  

*   Replace "YOUR\_SDK\_TOKEN" with the Bearer token key obtained from the dashboard (Check screenshot\_1).
*   Replace "YOUR\_SDK\_ID" with the CompanyUUID key obtained from the dashboard. (Check screenshot\_1).
*   Replace "END\_POINT\_URL" with the API base url
*   Replace "EMAIL" with the employee email which you registered on the dashboard.
*   Replace "LANGUAGE\_ID" with the en 0r ar, based on the we will set app language

  

![](https://lh7-us.googleusercontent.com/nL5gAQ3QGU82ikxnZYQEanpEMUsqQz3XpY21wXgXMYKUAu3DKct-_HIeXxCa-TXn1Yur76zI0kepkFuDcK7LCs7G9XYRo1shP3DcsTb8zlD0UvvGFIAmQLF_dtsRJqtqNVvFMc8PVBSd4XIbYDD2bEs)

  

**Feature and UI Configuration:**

  

*   configureIntroduction(to: Bool)
*   Set whether to display instructions during the verification process.
*   Parameters:
*   \`context:\` The context of the iOS application.
*   \`showInstruction:\` Set to true to display instructions; false otherwise.

  

**Getter Methods:**

  

1.  scanResultCallback: ((\[String: Any\], String) -> Void)?

*   Retrieve the result callback.
*   Here is a sample response 
```
[

    {

        "scan\_type": "Card",

        "scan\_data": {

            "NFC": {

                "Identity Number": "0113414631",

                "Issue Date": "2018-20-01",

                "Expiry Date": "2020-20-01",

                "Place of Issue (Arabic)": "مسقط",

                "Place of Issue (English)": "Seeb Resident",

                "Full Name (Arabic)": "رئيس حيدر",

                "Full Name (English)": "RAIS HAIDER",

                "Date of Birth": "1984-10-01",

                "Country of Birth (Arabic)": "الهند",

                "Country of Birth (English)": "INDIA",

                "Nationality (Arabic)": "هندي",

                "Gender (Arabic)": "ذكر",

                "Nationality (English)": "INDIAN",

                "Gender (English)": "Male",

                "Visa Number": "60102080",

                "Permit Type": "EMPLOYMENT SINGLE",

                "Use By Date": "2020-25-10",

                "Permit Number": "11751181",

                "Company Name (Arabic)": "مشاريع المازن للشرق الاوسط",

                "Company Name (English)": "ALMAZEM PROJECTS FOR THE MODLE EAST",

                "Company Address (Arabic)": "\\nالموالح, السيب\\nالصندوق البريدي 366, الرمز البريدي 114"

            },

            "scan": {

                "Date of Birth (DD MMM YYYY)": "31 Mar 1992",

                "Document No": "130810383",

                "Expiry Date (DD MMM YYYY)": "04 Apr 2025",

                "Expiry Date Formatted": "2025-04-04",

                "Full Name": "MUHAMMAD SAJID SHERIFF ",

                "country": "OMN",

                "Document Type": "ID",

                "Nationality": "LKA",

                "Gender": "MALE",

                "MRZ text": "130810383392033102504041",

                "Date of birth": "920331",

                "Date of Birth Formatted": "1992-03-31"

            },

            "scanImage": {

                "after-crop-back": UIImage Object,

                "liveness-image": UIImage Object,

                "after-crop-front": UIImage Object,

                "before-crop-back": UIImage Object,

                "face-Before-Remove-Background-Liveness": UIImage Object,

                "before-crop-front": UIImage Object

            },

            "Liveness": {

                "AML Screening": false,

                "Liveness Confirmed": true,

                "Match value": "0.68749946"

            }

        },

        "scan\_code": "bxnnxms",

        "scan\_status": 1,

        "uuid": "BRJJVNDIS7GXSDR"

    }

]
```
  
  *Note:* Type: Card/Passport

  

2.  documentScan()

*   Open the ID card scan module.

3.  passportScan()

*   Open the Passport scan module.

4.  isIntroductionEnabled()

*   Check whether instructions are enabled during the verification process.
*   Parameters:
*   \`context\`: The context of the iOS application.

  

To configure feature and UI settings, utilize the NashidSDK class as demonstrated in the examples provided.

  

**Here is sample app:** https://github.com/Nashid-Enterprises/verify-ios-sample-app
