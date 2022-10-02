import QtQuick
import QtQuick.Controls

Item {
    property var data: [
        {
            image: "stephans-quintet",
            question: "What object do you see on this image?",
            answer: "Stephan's Quintet",
            distractors: galaxiesAndNebulas.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Stephan's Quintet"),
            info: objects.find(i => i.name === "Stephan's Quintet")
        },

        {
            image: "stephans-quintet-miri",
            question: "What instrument was used to take this picture?",
            answer: "MIRI",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "MIRI"),
            info: instruments.find(i => i.name === "MIRI")
        },



        {
            image: "carina-nebula-nircam",
            question: "What object do you see on this image?",
            answer: "Carina Nebula",
            distractors: galaxiesAndNebulas.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Carina Nebula"),
            info: objects.find(i => i.name === "Carina Nebula")
        },

        {
            image: "carina-nebula-nircam",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },




        {
            image: "tarantul-nebula-nircam",
            question: "What object do you see on this image?",
            answer: "Tarantula Nebula",
            distractors: galaxiesAndNebulas.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Tarantula Nebula"),
            info: objects.find(i => i.name === "Tarantula Nebula")
        },

        {
            image: "tarantul-nebula-nircam",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },




        {
            image: "southern-ring-nebula-miri",
            question: "What object do you see on this image?",
            answer: "Southern Ring Nebula",
            distractors: galaxiesAndNebulas.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Southern Ring Nebula"),
            info: objects.find(i => i.name === "Southern Ring Nebula")
        },

        {
            image: "southern-ring-nebula-miri",
            question: "What instrument was used to take this picture?",
            answer: "MIRI",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "MIRI"),
            info: instruments.find(i => i.name === "MIRI")
        },

        {
            image: "southern-ring-nebula-nircam",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },



        {
            image: "cartwheel-galaxy-miri",
            question: "What object do you see on this image?",
            answer: "Cartwheel Galaxy",
            distractors: galaxiesAndNebulas.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Cartwheel Galaxy"),
            info: objects.find(i => i.name === "Cartwheel Galaxy")
        },

        {
            image: "cartwheel-galaxy-miri",
            question: "What instrument was used to take this picture?",
            answer: "MIRI",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "MIRI"),
            info: instruments.find(i => i.name === "MIRI")
        },


        {
            image: "jupiter",
            question: "What planet is this?",
            answer: "Jupiter",
            distractors: planets.sort(() => (Math.random() > .5) ? 1 : -1).filter(g => g !== "Jupiter"),
            info: objects.find(i => i.name === "Jupiter")
        },

        {
            image: "jupiter",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },


        {
            image: "neptune",
            question: "What planet is this?",
            answer: "Neptune",
            distractors: planets.sort(() => (Math.random() > .5) ? 1 : -1).filter(p => p !== "Neptune"),
            info: objects.find(i => i.name === "Neptune")
        },

        {
            image: "neptune",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },

        {
            image: "deep-field",
            question: "What instrument was used to take this picture?",
            answer: "NIRCam",
            distractors: instruments.sort(() => (Math.random() > .5) ? 1 : -1).map(i => i.name).filter(n => n !== "NIRCam"),
            info: instruments.find(i => i.name === "NIRCam")
        },

        {
            image: "position",
            question: "What does JWST orbit?",
            answer: "L2",
            distractors: [ "L1", "L3", "L4", "L5" ],
            info: objects.find(i => i.name === "L2")
        }
    ]

    property var instruments: [
        {
            name: "NIRCam",
            fullName: "Near Infrared Camera",
            brief: "NIRCam will detect light from: the earliest stars and galaxies in the process of formation, the population of stars in nearby galaxies, as well as young stars in the Milky Way and Kuiper Belt objects.",
            description: "The Near Infrared Camera (NIRCam) is Webb's primary imager that will cover the infrared wavelength range 0.6 to 5 microns. NIRCam will detect light from: the earliest stars and galaxies in the process of formation, the population of stars in nearby galaxies, as well as young stars in the Milky Way and Kuiper Belt objects.  NIRCam is equipped with coronagraphs, instruments that allow astronomers to take pictures of very faint objects around a central bright object, like stellar systems. NIRCam's coronagraphs work by blocking a brighter object's light, making it possible to view the dimmer object nearby - just like shielding the sun from your eyes with an upraised hand can allow you to focus on the view in front of you. With the coronagraphs, astronomers hope to determine the characteristics of planets orbiting nearby stars.",
            image: "nircam"
        },

        {
            name: "NIRSpec",
            fullName: "NEAR INFRARED SPECTROGRAPH",
            brief: "The NIRSpec is designed to observe 100 objects simultaneously. The NIRSpec will be the first spectrograph in space that has this remarkable multi-object capability.",
            descipription: "The Near InfraRed Spectrograph (NIRSpec) will operate over a wavelength range of 0.6 to 5 microns. A spectrograph (also sometimes called a spectrometer) is used to disperse light from an object into a spectrum. Analyzing the spectrum of an object can tell us about its physical properties, including temperature, mass, and chemical composition. The atoms and molecules in the object actually imprint lines on its spectrum that uniquely fingerprint each chemical element present and can reveal a wealth of information about physical conditions in the object. Spectroscopy and spectrometry (the sciences of interpreting these lines) are among the sharpest tools in the shed for exploring the cosmos.Many of the objects that the Webb will study, such as the first galaxies to form after the Big Bang, are so faint, that the Webb's giant mirror must stare at them for hundreds of hours in order to collect enough light to form a spectrum. In order to study thousands of galaxies during its 5 year mission, the NIRSpec is designed to observe 100 objects simultaneously. The NIRSpec will be the first spectrograph in space that has this remarkable multi-object capability. To make it possible, Goddard scientists and engineers had to invent a new technology microshutter system to control how light enters the NIRSpec.",
            image: "nirspec"
        },

        {
            name: "MIRI",
            fullName: "MID-INFRARED INSTRUMENT",
            brief: "MIRI will observe the redshifted light of distant galaxies, newly forming stars, and faintly visible comets as well as objects in the Kuiper Belt.",
            description: "The Mid-Infrared Instrument (MIRI) has both a camera and a spectrograph that sees light in the mid-infrared region of the electromagnetic spectrum, with wavelengths that are longer than our eyes see. MIRI covers the wavelength range of 5 to 28 microns. Its sensitive detectors will allow it to see the redshifted light of distant galaxies, newly forming stars, and faintly visible comets as well as objects in the Kuiper Belt. MIRI's camera will provide wide-field, broadband imaging that will continue the breathtaking astrophotography that has made Hubble so universally admired. The spectrograph will enable medium-resolution spectroscopy, providing new physical details of the distant objects it will observe.",
            image: "miri"
        },

        {
            name: "FGS/NIRISS",
            fullName: "FINE GUIDANCE SENSOR / NEAR INFRARED IMAGER AND SLITLESS SPECTROGRAPH",
            brief: 'FGS is a "guider," which helps point the telescope. NIRISS will be used to investigate the following science objectives: first light detection, exoplanet detection and characterization, and exoplanet transit spectroscopy.',
            description: 'The Fine Guidance Sensor (FGS) allows Webb to point precisely, so that it can obtain high-quality images. The Near Infrared Imager and Slitless Spectrograph part of the FGS/NIRISS will be used to investigate the following science objectives: first light detection, exoplanet detection and characterization, and exoplanet transit spectroscopy. FGS/NIRISS has a wavelength range of 0.8 to 5.0 microns, and is a specialized instrument with three main modes, each of which addresses a separate wavelength range. FGS is a "guider," which helps point the telescope.',
            image: "fgs-niriss"
        }
    ]




    property var objects: [
        {
            name: "Stephan's Quintet",
            fullName: "Stephan’s Quintet or the Hickson Compact Group 92",
            brief: "With its powerful, infrared vision and extremely high spatial resolution, Webb shows never-before-seen details in this galaxy group. ",
            description: "Sparkling clusters of millions of young stars and starburst regions of fresh star birth grace the image. Sweeping tails of gas, dust and stars are being pulled from several of the galaxies due to gravitational interactions. Most dramatically, Webb’s MIRI instrument captures huge shock waves as one of the galaxies, NGC 7318B, smashes through the cluster. These regions surrounding the central pair of galaxies are shown in the colors red and gold.\n\nThis composite NIRCam-MIRI image uses two of the three MIRI filters to best show and differentiate the hot dust and structure within the galaxy. MIRI sees a distinct difference in color between the dust in the galaxies versus the shock waves between the interacting galaxies. The image processing specialists at the Space Telescope Science Institute in Baltimore opted to highlight that difference by giving MIRI data the distinct yellow and orange colors, in contrast to the blue and white colors assigned to stars at NIRCam’s wavelengths.\n\nThis proximity provides astronomers a ringside seat for witnessing the merging of and interactions between galaxies that are so crucial to all of galaxy evolution. Rarely do scientists see in so much exquisite detail how interacting galaxies trigger star formation in each other, and how the gas in these galaxies is being disturbed. Stephan’s Quintet is a fantastic “laboratory” for studying these processes fundamental to all galaxies.\n\nThe new information from Webb provides invaluable insights into how galactic interactions may have driven galaxy evolution in the early universe."
        },

        {
            name: "Carina Nebula",
            fullName: "Cosmic Cliffs” in the Carina Nebula",
            brief: "Captured in infrared light by the Near-Infrared Camera (NIRCam) on NASA’s James Webb Space Telescope, this image reveals previously obscured areas of star birth.",
            description: "Called the Cosmic Cliffs, the region is actually the edge of a gigantic, gaseous cavity within NGC 3324, roughly 7,600 light-years away. The cavernous area has been carved from the nebula by the intense ultraviolet radiation and stellar winds from extremely massive, hot, young stars located in the center of the bubble, above the area shown in this image. The high-energy radiation from these stars is sculpting the nebula’s wall by slowly eroding it away.\n\nSeveral prominent features in this image are described below.\n\n-- The “steam” that appears to rise from the celestial “mountains” is actually hot, ionized gas and hot dust streaming away from the nebula due to intense, ultraviolet radiation.\n\n-- Dramatic pillars rise above the glowing wall of gas, resisting the blistering ultraviolet radiation from the young stars.\n\n-- Bubbles and cavities are being blown by the intense radiation and stellar winds of newborn stars.\n\n-- Protostellar jets and outflows, which appear in gold, shoot from dust-enshrouded, nascent stars.\n\n-- A “blow-out” erupts at the top-center of the ridge, spewing gas and dust into the interstellar medium.\n\n-- An unusual “arch” appears, looking like a bent-over cylinder.",
            image: "nircam"
        },

        {
            name: "Tarantula Nebula",
            fullName: "Tarantula Nebula",
            brief: "In this mosaic image stretching 340 light-years across, Webb’s Near-Infrared Camera (NIRCam) displays the Tarantula Nebula star-forming region in a new light, including tens of thousands of never-before-seen young stars that were previously shrouded in cosmic dust",
            description: "The most active region appears to sparkle with massive young stars, appearing pale blue. Scattered among them are still-embedded stars, appearing red, yet to emerge from the dusty cocoon of the nebula. NIRCam is able to detect these dust-enshrouded stars thanks to its unprecedented resolution at near-infrared wavelengths.\n\nTo the upper left of the cluster of young stars, and the top of the nebula’s cavity, an older star prominently displays NIRCam’s distinctive eight diffraction spikes, an artifact of the telescope’s structure. Following the top central spike of this star upward, it almost points to a distinctive bubble in the cloud. Young stars still surrounded by dusty material are blowing this bubble, beginning to carve out their own cavity. Astronomers used two of Webb’s spectrographs to take a closer look at this region and determine the chemical makeup of the star and its surrounding gas. This spectral information will tell astronomers about the age of the nebula and how many generations of star birth it has seen.\n\nFarther from the core region of hot young stars, cooler gas takes on a rust color, telling astronomers that the nebula is rich with complex hydrocarbons. This dense gas is the material that will form future stars. As winds from the massive stars sweep away gas and dust, some of it will pile up and, with gravity’s help, form new stars.",
            image: "nircam"
        },

        {
            name: "Southern Ring Nebula",
            fullName: "Southern Ring Nebula",
            brief: "This scene was created by a white dwarf star – the remains of a star like our Sun after it shed its outer layers and stopped burning fuel through nuclear fusion. Those outer layers now form the ejected shells all along this view.",
            description: "The brighter star hasn’t yet shed its layers. It closely orbits the dimmer white dwarf, helping to distribute what it’s ejected.\n\nOver thousands of years and before it became a white dwarf, the star periodically ejected mass – the visible shells of material. As if on repeat, it contracted, heated up – and then, unable to push out more material, pulsated. Stellar material was sent in all directions – like a rotating sprinkler – and provided the ingredients for this asymmetrical landscape.\n\nToday, the white dwarf is heating up the gas in the inner regions – which appear blue at left and red at right. Both stars are lighting up the outer regions, shown in orange and blue, respectively."
        },

        {
            name: "Cartwheel Galaxy",
            fullName: "Cartwheel Galaxy",
            brief: "This image from Webb’s Mid-Infrared Instrument (MIRI) shows a group of galaxies, including a large distorted ring-shaped galaxy known as the Cartwheel",
            description: "The Cartwheel Galaxy, located 500 million light-years away in the Sculptor constellation, is composed of a bright inner ring and an active outer ring. While this outer ring has a lot of star formation, the dusty area in between reveals many stars and star clusters.\n\nThe mid-infrared light captured by MIRI reveals fine details about these dusty regions and young stars within the Cartwheel Galaxy, which are rich in hydrocarbons and other chemical compounds, as well as silicate dust, like much of the dust on Earth.\n\nYoung stars, many of which are present in the bottom right of the outer ring, energize surrounding hydrocarbon dust, causing it to glow orange. On the other hand, the clearly defined dust between the core and the outer ring, which forms the “spokes” that inspire the galaxy’s name, is mostly silicate dust.\n\nThe smaller spiral galaxy to the upper left of Cartwheel displays much of the same behavior, showing a large amount of star formation. ",
            image: "miri"
        },

        {
            name: "Jupiter",
            fullName: "Jupiter",
            brief: "With giant storms, powerful winds, auroras, and extreme temperature and pressure conditions, Jupiter has a lot going on. Now, NASA’s James Webb Space Telescope has captured new images of the planet. Webb’s Jupiter observations will give scientists even more clues to Jupiter’s inner life.",
            description: "The image come from the observatory’s Near-Infrared Camera (NIRCam), which has three specialized infrared filters that showcase details of the planet. Since infrared light is invisible to the human eye, the light has been mapped onto the visible spectrum. Generally, the longest wavelengths appear redder and the shortest wavelengths are shown as more blue. Scientists collaborated with citizen scientist Judy Schmidt to translate the Webb data into images.\n\nIn the standalone view of Jupiter, created from a composite of several images from Webb, auroras extend to high altitudes above both the northern and southern poles of Jupiter. The auroras shine in a filter that is mapped to redder colors, which also highlights light reflected from lower clouds and upper hazes. A different filter, mapped to yellows and greens, shows hazes swirling around the northern and southern poles. A third filter, mapped to blues, showcases light that is reflected from a deeper main cloud.\n\nThe Great Red Spot, a famous storm so big it could swallow Earth, appears white in these views, as do other clouds, because they are reflecting a lot of sunlight.\n\nData from telescopes like Webb doesn’t arrive on Earth neatly packaged. Instead, it contains information about the brightness of the light on Webb’s detectors. This information arrives at the Space Telescope Science Institute (STScI), Webb’s mission and science operations center, as raw data. STScI processes the data into calibrated files for scientific analysis and delivers it to the Mikulski Archive for Space Telescopes for dissemination. Scientists then translate that information into images like these during the course of their research",
            image: "nircam"
        },

        {
            name: "Neptune",
            fullName: "Neptune",
            brief: "Webb’s Near-Infrared Camera (NIRCam) image of Neptune, taken on July 12, 2022, brings the planet’s rings into full focus for the first time in more than three decades.",
            description: "The most prominent features of Neptune’s atmosphere in this image are a series of bright patches in the planet’s southern hemisphere that represent high-altitude methane-ice clouds. More subtly, a thin line of brightness circling the planet’s equator could be a visual signature of global atmospheric circulation that powers Neptune’s winds and storms. Additionally, for the first time, Webb has teased out a continuous band of high-latitude clouds surrounding a previously-known vortex at Neptune’s southern pole.",
            image: "nircam"
        },

        {
            name: "L2",
            fullName: "Sun-Earth Lagrange Point 2",
            brief: "The James Webb Space Telescope orbits the Sun near Sun-Earth Lagrange point 2 (L2), approximately 1.5 million kilometers (1 million miles) from Earth.",
            description: "L2 is one of five Sun-Earth Lagrange points, positions in space where the gravitational pull of the Sun and Earth combine such that small objects in that region have the same orbital period (length of year) as Earth. This makes it possible for Webb to remain in constant communication with Earth.\n\nWebb is not located at L2, but instead orbits L2 at an average distance of about 500,000 kilometers (300,000 miles), completing one circuit every 168 days. Webb's \"halo orbit\" around L2 is elliptical and is roughly perpendicular to its orbital path around the Sun. Because of this complex orbit, Webb's precise distance from Earth varies over time.\n\nWebb is not located at L2, but instead orbits L2 at an average distance of about 500,000 kilometers (300,000 miles), completing one circuit every 168 days. Webb's \"halo orbit\" around L2 is elliptical and is roughly perpendicular to its orbital path around the Sun. Because of this complex orbit, Webb's precise distance from Earth varies over time."
        }

    ]

    property var galaxiesAndNebulas: [
        "Andromeda Galaxy", "Large Magellanic Cloud", "Small Magellanic Cloud", "Milky Way Galaxy",
        "Stephan's Quintet", "Carina Nebula", "Tarantula Nebula", "Southern Ring Nebula", "Cartwheel Galaxy"
    ]

    property var planets: [
        "Neptune", "Uranus", "Mars", "Venus", "Jupiter", "Mars", "Pluto"
    ]

    function getSubModel(size) {
        const shuffled = data.sort(() => (Math.random() > .5) ? 1 : -1);
        const unique = [...new Map(shuffled.map((item, key) => [item["image"], item])).values()]
        return unique.slice(0, size);
    }
}
