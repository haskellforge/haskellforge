# Haskell Code Completion

<p align="center">
    <img src='https://img.shields.io/badge/Haskell-5e5086?style=for-the-badge&logo=haskell&logoColor=white' width='15%'>
    <img src='/models/icons.png' width='25%'>
    <img src='https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white' width='15%'>
</p>

<h1 align="center">
Haskell Code Completion
</h1>

**Goal**: In this project, we aim to improve LLM-based code completion for functional programming languages, in specific: Haskell.

**Models**: We consider two pre-trained decoder only models: UniXcoder and CodeGPT.

**Data**: [github-code-haskell-function](https://huggingface.co/datasets/blastwind/github-code-haskell-function) (HuggingFace)

**Benchmarking**: Customized version of HumanEval for Haskell, see `/humaneval-hs`.


## Installation

Clone the repository:

```sh
git clone git@github.com:haskellforge/haskellforge.git
```

Install the dependencies:

* Either using `pip` and the provided `requirements.txt` files within the repository:
    
    ```sh
    pip install -r requirements.txt
    ```

* Or using [Poetry](https://python-poetry.org):


    ```sh
    curl -sSL https://install.python-poetry.org | python3 -

    poetry env use python3.8
    poetry install
    ```

    > Note: for details, please refer to `pyproject.toml`. In case of missing dependencies, use `poetry add <name>`.

## Usage

Any code surrounding the considered models (i.e. UniXcoder and CodeGPT) can be found in `/models`. Within this folder, there are subfolders for:
* `/finetuning`: contains the code and scripts to finetune both the models (see `blue-finetune.sh` for our final finetuning script)
* `/inference`: contains the code to run inference on both models
* `/evaluation`: contains the code for the evaluation of both models
Furthermore, this folder contains `create_model_inputs.py` for the splitting of the data for the models into train and test sets.

The HumanEval code can be found in `/humaneval-hs`. Each problem has been annotated manually with splits for the manual evaluation. The annotation of the results can be found in `/models/evaluation/annotated`.

In case you want to do manual evaluation on your own inference results, you can generate an Excel for annotation using `excelify.py` in `/models/evaluation` and plot the results of your annotations using `plotify.py` in the same folder. In case you are repeating the experiment and are curious to overlapping results, you can use `overlapify.py` in `/overlap-check` where both old and new files ought to be placed in the `/old` and `/new` folders respectively, with the same file names.

Each file has been documented with comments to explain the code and if applicable, the arguments that can be passed to the script.

## Results

For the results, please refer to our submitted paper.


