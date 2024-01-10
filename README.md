# stack_demo

A Flutter To-Do app that shows the workflow of Riverpod Architecture, with
Riverpod state management, Firebase and go_router. 

## Getting Started

This projects takes advantage of the Riverpod Architecture described by 
Andrea Bizzotto in his Code With Andrea series.

This is the link to the article, there are about 5 articles that are worth
reading here that will give good insight as to how a project should be strucured.
[Riverpod Architecture Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)
[Riverpod Architecture Example Project](https://github.com/bizz84/starter_architecture_flutter_firebase)

## Packages
1. Riverpod - State Management
2. go_router - Routing 
3. Firebase Dependencies - Auth/Database
4. riverpod_generator - Code Generation for Providers
    - Please take a look at this and how it works, using this makes our lives
    so much easier with not having to determine what provider we need.
    - You may also need to look into the Notifier syntax, (look at the controller
    for the todo page in the presentation directory, where the class extends).

## Testing
Testing with Riverpod and how we set our classes up will be extremely easy,
given that we use **dependency injection** properly to have mock databases
and widget tests.

## Things That Are Missing
- [] Skeletonizer  - Skeleton UI
- [] Add tests
- [] Responsive UI
