# **LayoutXLM**

**Multimodal (text + layout/format + image) fine-tuning toolkit for document understanding trained on `XFUN.ja`**

## Installation

### Your machine

_Note_: please install `poppler` accordingly to your platform, dependency for [pdf2image](https://github.com/Belval/pdf2image)

```bash
conda create --prefix ./env python=3.8
conda activate ./env

pip install -r requirements.txt

python3 -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
```

---

### Docker container

Pull existing image:

```bash
docker pull beomus/layoutxlm:latest
```

Build from source:

```bash
docker build -t layoutxlm .
```

- On your host:

    ```bash
    docker run -it -p 8888:8888 layoutxlm:latest
    ```

- Inside your container:

    ```bash
    jupyter lab --ip 0.0.0.0 --no-browser --allow-root
    ```

- On your host:

    ```bash
    localhost:8888/tree‌
    ```

---

## License

The content of this project itself is licensed under the [Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
Portions of the source code are based on the [transformers](https://github.com/huggingface/transformers) project.
[Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct)

### Contact Information

For help or issues using layoutlmft, please submit a GitHub issue.

For other communications related to layoutlmft, please contact Lei Cui (`lecu@microsoft.com`), Furu Wei (`fuwei@microsoft.com`).
