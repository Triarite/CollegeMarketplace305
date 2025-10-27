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
**A/B Test Name:**

**User Story Number:**

**Metrics:**

**Hypothesis:**

**Experiment:**

**Variations:**

---

## Cadije
**A/B Test Name:**

**User Story Number:**

**Metrics:**

**Hypothesis:**

**Experiment:**

**Variations:**

---

## Angel
**A/B Test Name:**

**User Story Number:**

**Metrics:**

**Hypothesis:**

**Experiment:**

**Variations:**

