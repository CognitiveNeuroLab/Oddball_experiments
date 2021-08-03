[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]





<br />
<p align="center">
  <a href="https://github.com/CognitiveNeuroLab/Oddball_experiments/">
    <img src="images/logo.jpeg" alt="Logo" width="160" height="160">
  </a> 

<h3 align="center">Oddball paradigm</h3>

<h4 align="center"> This is still a work in progress. All new oddball paradigms that are run in the CNL can be added to this Repo. It currently has a Duration oddbal tone paradigm and a Visual oddball pardigm </h4>


**Table of Contents**
  
1. [About the project](#about-the-project)
2. [Visual oddball](#getting-started)
    - [Visual spacial oddball](#visual-spacial-oddball)  
3. [Auditory oddball](#auditory-oddball)
    - [Duration tone oddball](#duration-tone-oddball)
    - [Duration discrimination oddball](#duration-discrimination-oddball)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgements](#acknowledgements)





<!-- ABOUT THE PROJECT -->
## About The Project

In this repo everyone can add all the the oddball paradigms that are being ran at the CNL. Currently in this repo:
1- visual oddbal
2- auditory duration tone oddball
3- auditory duration discrimination oddball




<!-- GETTING STARTED -->
## Visual Oddball

### Visual spacial oddball

For this oddball the soa is changing [(similar to the auditory Duration tone oddball)](#duration-tone-oddball).  
The standard is happenin 80% of the time, it is a triangle that shows up in the middle of the screen.
The deviant is happens 20% of the time, never in a row, by showing up lower then the Standard.
We still need to decide how many trails we need per block. 
Created by [Douwe Horsthuis](https://github.com/DouweHorsthuis) and [Ana Francisco](https://github.com/anafrancisco)

## Auditory oddball

### Duration tone oddball

For this oddball the soa is changing, there is a 225-450-900-1800-3000 ms SOA.  
The standard is happenin 80% of the time, it is a 100ms 1000hz tone.
The deviant is happens 20% of the time, never in a row, it is a 180ms 1000hz tone..
We still need to decide how many trails we need per block
Created by Luke Shaw and updated by [Douwe Horsthuis](https://github.com/DouweHorsthuis)  

### Duration discrimination oddball

For this oddball the duration of the deviant tone changes. The standard tone has a 100ms tone that contains at the start and end a 10ms rise and fall time. The deviants have a duration of 115ms (11ms rise/fall) 130ms (13ms rise/fall) 145ms (15ms rise/fall) 160ms (16ms rise/fall). 
The standard is happenin 80% of the time and the deviant is happens 20% of the time. The tones are all 1000hz and are created using audacity.Every trail has a 800 ms ISI after a standard and the ISI after a deviant depends on whatever the length of the deviant is so the trial ends up being also 900 ms. Running 1 block takes 3 min 36 sec. Each block contains 240 trials (192 standards and 48 deviants). If the trial is a deviant or standard is decided in a semi randomized txt file. For each block there is 1 currently, but if this paradigm is ran for a study, use the matlab file to create 50 for each condition and change the presentation code to randomize which one it'll pick.

## Contributing

Please add any oddball paradigm you are using to this repo  **greatly appreciated**.

Feel free to reach out to Douwe Horsthuis (douwe.horstuis@einsteinmed.org or douwehorsthuis@gmail.com), or just add it to the repo and update the readme.



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Douwe Horsthuis - douwehorsthuis@gmail.com

Project Link: [https://github.com/CognitiveNeuroLab/Oddball_experiments/](https://github.com/CognitiveNeuroLab/Oddball_experiments/)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* Luke Shaw - who made the first version of the oddball duration tone paradigm




[contributors-shield]: https://img.shields.io/github/contributors/CognitiveNeuroLab/Oddball_experiments.svg?style=for-the-badge
[contributors-url]: https://github.com/CognitiveNeuroLab/Oddball_experiments/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/CognitiveNeuroLab/Oddball_experiments.svg?style=for-the-badge
[forks-url]: https://github.com/CognitiveNeuroLab/Oddball_experiments/network/members
[stars-shield]: https://img.shields.io/github/stars/CognitiveNeuroLab/Oddball_experiments.svg?style=for-the-badge
[stars-url]: https://github.com/CognitiveNeuroLab/Oddball_experiments/stargazers
[issues-shield]: https://img.shields.io/github/issues/CognitiveNeuroLab/Oddball_experiments.svg?style=for-the-badge
[issues-url]: https://github.com/CognitiveNeuroLab/Oddball_experiments/issues
[license-shield]: https://img.shields.io/github/license/CognitiveNeuroLab/Oddball_experiments.svg?style=for-the-badge
[license-url]: https://github.com/CognitiveNeuroLab/Oddball_experiments/blob/master/LICENSE.txt
