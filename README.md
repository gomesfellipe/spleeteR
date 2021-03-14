<img src="https://github.com/deezer/spleeter/raw/master/images/spleeter_logo.png" height="80" />

> :warning: See the complete documentation in the [official repository](https://github.com/deezer/spleeter).

## About

The `spleeter` package is a wrapper for the official library **Spleeter**, developed by [Deezer](https://www.deezer.com/) with pretrained models
written in [Python](https://www.python.org/) and uses [Tensorflow](https://tensorflow.org/). It makes it easy
to train source separation model (assuming you have a dataset of isolated sources), and provides
already trained state of the art model for performing various flavour of separation :

* Vocals (singing voice) / accompaniment separation ([2 stems](https://github.com/deezer/spleeter/wiki/2.-Getting-started#using-2stems-model))
* Vocals / drums / bass / other separation ([4 stems](https://github.com/deezer/spleeter/wiki/2.-Getting-started#using-4stems-model))
* Vocals / drums / bass / piano / other separation ([5 stems](https://github.com/deezer/spleeter/wiki/2.-Getting-started#using-5stems-model))

## Quick start

Make sure the `reticulate` package is installed and configured!

First, install the python lib:

```r
reticulate::py_install(c("spleeter"), forge = TRUE)
```

Then install the package for R from Github:

```r
remotes::install_github("gomesfellipe/spleeter")
```

To use the package, just run the function bellow where `<audiopath>` is the path to the *.mp3*  file and `n_steam` is the flavour of separation:

```r
spleeteR::separator(audio_path = "<audio_path>", n_steam = 2)
```

You should get two separated audio files (`vocals.wav` and `accompaniment.wav`) in the `output/<audio_path>` folder.

> :warning: For now this is the only function of the package. Feel free to add new features.

For a detailed documentation of Python package, check the [repository wiki](https://github.com/deezer/spleeter/wiki/1.-Installation)

## Reference

* Deezer Research - Source Separation Engine Story - deezer.io blog post:
  * [English version](https://deezer.io/releasing-spleeter-deezer-r-d-source-separation-engine-2b88985e797e)
  * [Japanese version](http://dzr.fm/splitterjp)
* [Music Source Separation tool with pre-trained models / ISMIR2019 extended abstract](http://archives.ismir.net/ismir2019/latebreaking/000036.pdf)

If you use **Spleeter** in your work, please cite:

```BibTeX
@article{spleeter2020,
  doi = {10.21105/joss.02154},
  url = {https://doi.org/10.21105/joss.02154},
  year = {2020},
  publisher = {The Open Journal},
  volume = {5},
  number = {50},
  pages = {2154},
  author = {Romain Hennequin and Anis Khlif and Felix Voituret and Manuel Moussallam},
  title = {Spleeter: a fast and efficient music source separation tool with pre-trained models},
  journal = {Journal of Open Source Software},
  note = {Deezer Research}
}
```

## License

The code of **Spleeter** is [MIT-licensed](LICENSE).

## Troubleshooting

Consult [currently open issues](https://github.com/deezer/spleeter/issues) for Troubleshooting 

