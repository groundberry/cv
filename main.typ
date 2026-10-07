#import "@preview/basic-resume:0.2.9": *

#let name = "Blanca Mendizabal Perello"
#let location = "Seattle, WA"
#let email = "blanca.mendizabal.perello@gmail.com"
#let github = "github.com/groundberry"
#let linkedin = "linkedin.com/in/blancamendi"
#let phone = "+1 (206) 698-6782"
#let personal-site = "groundberry.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  linkedin: linkedin,
  phone: phone,
  accent-color: "#26428b",
  font: "Inter",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

// Positioning
#align(left)[
  #text(size: 11pt, weight: "bold")[
    Senior Frontend Software Engineer
  ]

  #text(size: 9pt, fill: rgb("#555555"))[
    React · TypeScript · Accessibility · Localization · AI Product Experiences
  ]
]

== Summary

Frontend Software Engineer with 6+ years at Microsoft, promoted to Software Engineer II (SDE 2), building customer-facing learning and AI products used by hundreds of thousands of learners worldwide. Specializes in React and TypeScript, frontend architecture, accessibility, localization, reusable components, and engineering quality. Experienced in shaping frontend solutions from requirements and design through implementation, testing, and production, while improving developer efficiency through automation and scalable engineering practices.

== Technical Skills

#generic-one-by-two(
  left: "Frontend",
  right: "React, TypeScript, JavaScript, Fluent UI, HTML/CSS, Responsive Design, Frontend Architecture, Reusable Components",
)

#generic-one-by-two(
  left: "Quality & Accessibility",
  right: "Jest, React Testing Library, Playwright, Axe, Accessibility Insights, WCAG, Automated Testing",
)

#generic-one-by-two(
  left: "Platform & Engineering",
  right: "Azure, REST APIs, CI/CD, Telemetry, Performance Optimization, Internationalization, Localization",
)

#generic-one-by-two(
  left: "Engineering Practices",
  right: "Code Reviews, Developer Tooling, Technical Documentation, Mentoring, Cross-functional Collaboration",
)

== Work Experience

#work(
  title: "Software Engineer II (SDE 2)",
  location: "Seattle, WA",
  company: "Microsoft",
  dates: dates-helper(
    start-date: "Sep 2022",
    end-date: "Sep 2026",
  ),
)

*AI Skills Navigator (AISN) — 2025–2026*

- Built the React/TypeScript frontend foundation for an AI-powered learning platform that personalizes AI skilling recommendations and creates tailored learning playlists based on users' roles and preferences.
- Shaped and implemented most of the product's core UI, partnering closely with PMs and designers while establishing responsive, accessible, and maintainable frontend patterns used as examples for subsequent development.
- Established reusable component and testing patterns from the start of the project, improving consistency, testability, and maintainability as the product rapidly evolved.
- Designed the localization foundation for expansion from English to 9 languages, supporting localization of both static and dynamic content while addressing pain points identified through the ESI experience.
- Contributed to an international launch that grew the platform from hundreds to thousands of users within months, supporting Microsoft's broader goal of helping millions of learners build AI skills.

*Enterprise Skills Initiative (ESI) — 2020–2025*

- Built and evolved React/TypeScript experiences across 10+ customer-facing experiences for a global learning platform serving hundreds of thousands of learners across 9 languages, with a focus on usability, accessibility, and maintainability.
- Improved accessibility at scale across keyboard navigation, screen-reader support, focus management, color contrast, and component behavior; used Axe and Accessibility Insights to identify systemic issues and validate fixes.
- Partnered with Microsoft's localization organization to implement an automated localization pipeline, reducing localization effort by *more than 90%* and establishing a scalable workflow for a 9-language platform.
- Introduced localization improvements that reduced related bugs and manual work by *more than 50%*, addressing duplicated string IDs and other pain points in the existing workflow.
- Championed reusable, accessible components and frontend best practices, improving consistency, testability, and maintainability across the codebase while addressing accessibility from the beginning of feature development.
- Strengthened engineering quality across the development lifecycle through automated testing with Jest, React Testing Library, and Playwright, as well as CI/CD, telemetry, production troubleshooting, and performance optimization.
- Extended impact beyond feature delivery by mentoring engineers and vendors and contributing to internal documentation, code reviews, and frontend knowledge-sharing sessions.

#work(
  title: "Software Engineer",
  location: "Seattle, WA",
  company: "Microsoft",
  dates: dates-helper(
    start-date: "Apr 2020",
    end-date: "Sep 2022",
  ),
)

- Delivered customer-facing React and TypeScript features for Microsoft learning products, working across requirements, design, implementation, testing, and production support.
- Built reusable UI components with Fluent UI and established frontend patterns that improved consistency and maintainability across product experiences.
- Conducted accessibility reviews and implemented fixes covering keyboard navigation, screen readers, focus management, color contrast, and accessible component behavior.
- Collaborated with PMs, designers, backend engineers, accessibility specialists, and other Microsoft teams to deliver reliable, accessible, and localized experiences.
- Contributed to automated testing, CI/CD, telemetry, debugging, and production troubleshooting to improve engineering quality and reliability.

#work(
  title: "Frontend Developer, via VTeamLabs",
  location: "Seattle, WA",
  company: "Microsoft",
  dates: dates-helper(
    start-date: "May 2019",
    end-date: "Apr 2020",
  ),
)

- Developed customer-facing features for Microsoft Learn using React, TypeScript, and Fluent UI within the main Microsoft Learn codebase.
- Performed accessibility audits and implemented improvements to make learning experiences more usable for people with disabilities.
- Built reusable React components, including grid and onboarding experiences, improving consistency and reuse across the product.
- Improved the Microsoft Learn style guide with interactive, live examples to make component usage and frontend standards easier for engineers to adopt.

== Education

#edu(
  institution: "Makers Academy",
  location: "London, UK",
  dates: dates-helper(
    start-date: "Aug 2016",
    end-date: "Dec 2016",
  ),
  degree: "Software Development Bootcamp",
)

#edu(
  institution: "Escuela de Organización Industrial (EOI)",
  location: "Madrid, Spain",
  dates: dates-helper(
    start-date: "2010",
    end-date: "2011",
  ),
  degree: "M.Sc. Environmental Engineering and Management",
)

#edu(
  institution: "Universidad Politécnica de Madrid (UPM)",
  location: "Madrid, Spain",
  dates: dates-helper(
    start-date: "2000",
    end-date: "2008",
  ),
  degree: "B.Sc. Agricultural Engineering",
)
