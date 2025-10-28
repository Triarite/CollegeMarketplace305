> The example immediately below should be removed before Monday night.
```
## Name Here
**A/B Test Name:**  Make a meaningful name for the test. For example  "Signup/Sign In 1 screen or 2 screens", could be a title for an A/B test to determine if users prefer having account creation and login on a single screen, or two screens.

**User Story Number:** For instance, the "Signup/Sign In 1 screen or 2 screens" A/B test would be a task under US1 (Account Creation). 

**Metrics:**  Your team's HEART metrics that this A/B test measures.

**Hypothesis:** State your hypothesis for this A/B test
  "What problem are we trying to solve? Its impact? (e.g. how big this problem is to our customers?) In formulating the hypothesis, first you need to define the problem you want to solve. For example, you are an SaaS that offers free trial and you want to improve Adoption. But that problem might be too broad to form an A/B test as you can simply test one variable in an A/B test to be effective (otherwise you won’t know which variable is causing the change). So to narrow down the problem you want to solve, you need to find out the bottle-neck in the conversion funnel – where do people drop off the most? Are there any key information or call-to-action buttons that you expect people to read/click but they didn’t? 
  After narrowing down the problem you want to solve, you then need to make a hypothesis as to what causes those bottlenecks and what you can do to improve. For example, you noticed most of the visitors will visit your “Features” page but very few of them will actually scroll past even half of the page so many features that you think are important are not actually viewed by the visitors. To improve this, one hypothesis might be using tab or toggle list design to make your page shorter and visitors can select to dig deeper into content that they are interested in by expanding the content. Remember when formulating your hypothesis, change only one variable so that you will know it’s really that variable that is causing the change in conversion."

**Experiment:** Detail out the experiment setup that you will use to test your hypothesis using Firebase capabilities. Describe the audiences – will all users be able to view the experiment? Or you will only allocate x% of your user base to the experiment? Lay out the details with the rationale behind this decision. Describe the tracking using Firebase Analytics. With your HEART metrics, what tracking needs to be set up? 

**Variations:** In this section, describe what variations you would like to test. Layout the design work related and add diagrams, mockups and designs related to the confirmed variation that you’d like to test.
```

## Paolo
**A/B Test Name:** Item Listing Price Location - On-Top of Image vs Adjacent to Image

**User Story Number:** US4 - Golden Path

**Metrics:**
- Engagement: Time until user makes purchase decision or exits item listing
- Happiness: User rates intuitiveness of determining price

**Hypothesis:**
- Users are more likely to quickly make a purchase decision if the price is adjacent to the image instead of on top of the image.

**Experiment:**
- Platform: Survey sent to user and saved to firebase
- Audience: All users
- Metric Collection Parameter: After certain # of purchases, user is presented survey asking about intuitiveness, time spent on determing purchase decision.

**Variations:**
- Variant A: Price is on top-right corner of image
- Variant B: Price is immediately below image next to item name

---

## Josh
**A/B Test Name:** Signup/Sign-in: One Screen vs Two Screens

**User Story Number:** US1 - Account Creation 

**Metrics:**
- Adoption (Primary): Percentage of users who successfully create or log into an account

- Engagement: Time it takes to complete the login/signup process

- Happiness: User satisfaction based on quick survey or feedback prompt

**Hypothesis:**
Users are more likely to complete the signup or login process if both options are available on the same screen, since it removes confusion and extra navigation steps.
We believe that combining them will increase completion rate and reduce time-to-authentication compared to having two separate screens.

**Experiment:**
- Platform: Firebase A/B Testing using Remote Config

- Parameter: auth_screen_variant = "combined" or "separate"

- Audience: 50/50 split of new users who are not signed in

Tracking:

- auth_view – when the page loads

- auth_submit – when the button is tapped

- auth_success – when authentication completes

- auth_error – if login/signup fails

- Duration: 7 days or until 1,000 sessions per variant

**Variations:**
Variant A (Combined):

- One screen with a toggle between “Login” and “Sign Up”

- Shared email/password fields

- One main button that changes label based on toggle

Variant B (Separate):

- Two distinct pages: one for “Login,” one for “Sign Up”

- Users must navigate between screens
---

## Aushia
**A/B Test Name:** Logo Preference Test – Version A vs B

**User Story Number:** Sprint 2; CM_01: Create a Logo

**Metrics:**
- Click-through rate (CTR) on the login or sign-up page
- Retention: Time spent on the page
- Happiness: Bounce rate
- Engagement: Brand recall using a survey
  
**Hypothesis:**
Changing subtle elements of the logo, such as font or icons used and placed, will influence user engagement. Logo A will result in higher CTR and better brand recall due to its unique icon usage.

**Experiment:**
Display Logo A and Logo B to randomly split user groups visiting the homepage or landing page. Ensure all other page elements remain identical. Track user behavior and engagement metrics over a 7-day period.

**Variations:**
Logo A: Original logo with current font and icon alignment
Logo B: Slightly modified logo with a business font and no icons

---

## Cadije
**A/B Test Name:** Product Recommendation Section

**User Story Number:** US-04 Golden Path

**Metrics:** 
- Engagement = Encourage students to browse listings, chat, and make purchases regularly.
- Retention = Encourage repeated buying behavior.

**Hypothesis:**
Users will be more likely to repeatedly make purchases and/or if they are presented with recommended products based on their past needs and purchases. Presenting items based on user habits eliminates the task of searching for products leaving the user with more motivation to buy.

**Experiment:**
 Platform: Firebase A/B Testing using Remote Config

- Parameter: Recommended_Tab = "enabled" or "disabled"

- Audience: 50/50 split of users who have made at least 3 purchases

Tracking:

- recommended_tap – whether the user interacts with the recommended tab
  
- recommended_view– how long the user views the overall recommended tab

- recommended_item_view – how long a user views a recommnded item

- recommended_buy – whether a user buys a recommended item
- 
- experiment_buy – how many products a user with a recommended tab purchases during the experiment
  
- Duration: 30 days

**Variations:**

Recommended_Tab(Disabled) - these users will not have access to a recommended page
Recommended_Tab(Enabled) - these users will have access to a functioning recommended tab

---

## Angel
**A/B Test Name:** Avatar Upload Prominence

**User Story Number:** 3-Profile creation

**Metrics:**  

Engagement: Profile completion rate (% of users who fill all optional fields)

Adoption: Profile creation completion rate (% of users who successfully create a profile after starting)

Task Success: Time to complete profile creation, error rate during creation

**Hypothesis:**

If we make the profile picture upload more prominent with contextual messaging, then profile picture upload rates will increase by 15-20% because students will better understand the value of having a profile picture for building trust in marketplace transactions.

**Experiment:**

- Platform: Firebase A/B Testing using Remote Config

- Parameter: profile_avatar_variant = "standard" or "enhanced"

- Audience: 50/50 split of all new users during profile creation flow

- Tracking: Display either standard or enhanced avatar upload UI to randomly split user groups. Track profile picture upload rate, completion rate, and time to complete over a 2-3 week period until statistical significance is reached (minimum 1,000 profiles per variant).



**Variations:**

Version A: is going to be the original "+" button"

Version B: going to add text on top of Image area, make image bigger, and change "+" button to "add image" button

