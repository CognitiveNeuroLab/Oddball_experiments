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

<h4 align="center"> All new oddball paradigms that are run in the CNL can be added to this Repo. It currently has a Duration oddbal tone paradigm and a Visual oddball pardigm </h4>


**Table of Contents**
  
1. [About the project](#about-the-project)
2. [Visual oddball](#getting-started)
    - [Visual spacial oddball](#visual-spacial-oddball)  
3. [Auditory oddball](#auditory-oddball)
    - [Duration discrimination oddball](#duration-discrimination-oddball)
    - [Duration tone oddball](#duration-tone-oddball)
    - [Omission Oddball](#omission-oddball)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgements](#acknowledgements)





<!-- ABOUT THE PROJECT -->
## About The Project

In this repo everyone can add all the the oddball paradigms that are being ran at the CNL. Currently in this repo:
1- auditory duration discrimination oddball
2- auditory duration tone oddball
3- auditory ommision oddball
4- visual oddbal




<!-- GETTING STARTED -->
## Auditory oddball

### Duration discrimination oddball

For this oddball the duration of the deviant tone changes. The standard tone has a 100ms tone that contains at the start and end a 10ms rise and fall time. The deviants have a duration of 115ms (11ms rise/fall) 130ms (13ms rise/fall) 145ms (15ms rise/fall) 160ms (16ms rise/fall). 
The standard is happenin 80% of the time and the deviant is happens 20% of the time. The tones are all 1000hz and are created using audacity.Every trail has a 800 ms ISI after a standard and the ISI after a deviant depends on whatever the length of the deviant is so the trial ends up being also 900 ms. Running 1 block takes 3 min 36 sec. Each block contains 240 trials (192 standards and 48 deviants). If the trial is a deviant or standard is decided in a semi randomized txt file. For each block there is 1 currently, but if this paradigm is ran for a study, use the matlab file to create 50 for each condition and change the presentation code to randomize which one it'll pick.

When testing the timing of this paradigm **we found that there is 1ms between the onset of any stimulus and the trigger**. This is highly related to soundcards. If you plan to use this paradigm, you need to measure if this timing is also accurate for that computer.
This experiment has also a behavioral part where it only does 30 trials and people should click for the deviant.  
Created by [Douwe Horsthuis](https://github.com/DouweHorsthuis) and [Ana Francisco](https://github.com/anafrancisco)  

### Duration tone oddball

For this oddball the soa is changing, there is a 225-450-900-1800-3000 ms SOA.  
The standard is happening 80% of the time, it is a 100ms 1000hz tone.
The deviant is happens 20% of the time, never in a row, it is a 180ms 1000hz tone..
We still need to decide how many trails we need per block
When testing the timing of this paradigm **we found that there is 1ms between the onset of any stimulus and the trigger**. This is highly related to soundcards. If you plan to use this paradigm, you need to measure if this timing is also accurate for that computer.

Created by Luke Shaw and extra soas added + updated by [Douwe Horsthuis](https://github.com/DouweHorsthuis)  

### Ommision oddball
For this oddball there is a standard 1000hz 50ms tone with a rise and fall time of 5ms presented 85% of the times. 15% of the times there is a 50ms silence presented. All deviant preceded by at least 2 standards and there are no deviants in the first 4 trials.  This should results in a MMN, however this specific MMN wasn't clear (not none existend) when we looked at the data so it got dropped from the project. Each block has a different ISI. Each block needs to be ran 4 times resulting in 144 deviants.  When testing the timing of this paradigm **we found that there is 2ms between the onset of any stimulus and the trigger**. 

Created by [Douwe Horsthuis](https://github.com/DouweHorsthuis) and [Ana Francisco](https://github.com/anafrancisco)  

## Visual Oddball

### Visual spacial oddball

For this oddball the soa is changing per block [(similar to the auditory Duration tone oddball)](#duration-tone-oddball).  
The standard is happenin 80% of the time, it is a triangle that shows up in the middle of the screen.
The deviant is happens 20% of the time, never in a row, by showing up lower then the Standard.
There are 220 trial in one block, that will contain 33 deviants, so each block needs to be ran 3 times. 
To use the experiment, use the Matlab script to create 50 sequence files for each **soa**, and change the presentation code **for each PCL**:  
```presentation
#string file_path = direc + "sequences\\" + printf(random(1,50),"225_sequence_%d.txt"); #this one should be used for the real experiment
string file_path = direc + "sequences\\" + printf(1,"225_sequence_%d.txt"); #this one should be used only when testing
```  
Should be  
```presentation
string file_path = direc + "sequences\\" + printf(random(1,50),"225_sequence_%d.txt"); #this one should be used for the real experiment
#string file_path = direc + "sequences\\" + printf(1,"225_sequence_%d.txt"); #this one should be used only when testing
```
This paradigm also has a behavioral part where every particpant should do 1 block of each SOA after they are all done with the passive part. 
Both parts have eyetracking.

When testing the timing of this paradigm **we found that there is 0ms between the onset of any stimulus and the trigger**. in the "code_std" event in the scenario we delay the trigger by 7ms so they happen at the same time.  

As you can see here the onset of the trigger (orange) happens a the same time as when the stimulus changes thresholds 
![timing](https://github.com/CognitiveNeuroLab/Oddball_experiments/blob/master/images/Timing_visual_oddball.JPG)

Created by [Douwe Horsthuis](https://github.com/DouweHorsthuis) and [Ana Francisco](https://github.com/anafrancisco)


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
