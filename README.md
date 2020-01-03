# R kernel notebooks and RStudio in Binder using a Dockerfile

Jupyter+R: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/fomightez/janRdockertest/master?filepath=index.ipynb)

RStudio: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/fomightez/janRdockertest/master?urlpath=rstudio)


----

Currently testing making a repo that results in RStudio and notebooks with an R-based kernel work via the public Binder federation. Currently, the recommended approach [here, entitled 'Using R with Jupyter / RStudio on Binder'](https://github.com/binder-examples/r) is not building properly. Issues discussed [here](https://discourse.jupyter.org/t/question-about-voila-binder/2981), [here](https://github.com/jupyterhub/mybinder.org-deploy/issues/1308), and [here](https://github.com/jupyter/repo2docker/pull/830)

Based on Titus Brown's [repo](https://github.com/ngs-docs/2020-ggg-298-first-day-rnaseq) at present.

----

### Known Issues:

- Doesn't offer RShiny dashboards (as far as I can tell; at least not via the URL that the [official R example](https://github.com/binder-examples/r) suggests). So won't address @aciobanusebi's request, see [here](https://discourse.jupyter.org/t/cannot-get-r-project-working/2917/11?u=fomightez).

----

Launch directly into basic Jupyter interface: [![Binder](https://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/fomightez/janRdockertest/master) <--- Probably not what you want unless trouble-shooting. See badges at top.


