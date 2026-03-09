# Contributing to French Museum Recommendation Engine

Thank you for your interest in contributing to this project! This document provides guidelines and information for contributors.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [Development Setup](#development-setup)
- [Coding Standards](#coding-standards)
- [Submitting Changes](#submitting-changes)
- [Reporting Issues](#reporting-issues)

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment. Please:

- Be respectful of differing viewpoints and experiences
- Accept constructive criticism gracefully
- Focus on what is best for the community and project
- Show empathy towards other community members

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/museum-recommendation-engine.git
   cd museum-recommendation-engine
   ```
3. **Set up the development environment** (see [Development Setup](#development-setup))
4. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## How to Contribute

### Types of Contributions Welcome

- **Bug fixes**: Found a bug? Please submit a fix!
- **Documentation**: Improvements to README, docstrings, or comments
- **New features**: Enhancements to the recommendation algorithm
- **Performance improvements**: Optimizations for speed or memory usage
- **Tests**: Adding or improving test coverage
- **Code quality**: Refactoring or code cleanup

### Feature Ideas

Here are some areas where contributions would be particularly valuable:

- Geographic filtering (recommend museums by proximity)
- Web API implementation (Flask/FastAPI)
- Alternative embedding models (sentence-transformers, etc.)
- Visualization dashboard
- Multi-language support
- Caching mechanisms for embeddings
- Docker containerization

## Development Setup

### Prerequisites

- Python 3.8 or higher
- pip or conda
- Git

### Installation

```bash
# Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install pandas numpy scikit-learn spacy spacy-transformers missingno jupyter

# Install development dependencies
pip install pytest black flake8 mypy

# Download the French transformer model
python -m spacy download fr_dep_news_trf
```

### Running the Notebook

```bash
jupyter notebook notebook.ipynb
```

### Running Tests (if available)

```bash
pytest tests/
```

## Coding Standards

### Python Style Guide

This project follows [PEP 8](https://pep8.org/) style guidelines. Please ensure your code:

- Uses 4 spaces for indentation (no tabs)
- Has a maximum line length of 88 characters (Black default)
- Includes docstrings for functions and classes
- Uses meaningful variable and function names

### Code Formatting

We recommend using [Black](https://black.readthedocs.io/) for automatic formatting:

```bash
black your_file.py
```

### Linting

Check your code with flake8:

```bash
flake8 your_file.py
```

### Jupyter Notebooks

When contributing to notebooks:

- Clear all outputs before committing (Cell > All Output > Clear)
- Use markdown cells to explain concepts
- Keep code cells focused and modular
- Include comments for complex operations

## Submitting Changes

### Pull Request Process

1. **Update documentation** if your changes affect usage
2. **Test your changes** thoroughly
3. **Commit with clear messages**:
   ```bash
   git commit -m "Add geographic filtering for museum recommendations"
   ```
4. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```
5. **Open a Pull Request** on GitHub with:
   - Clear title describing the change
   - Description of what was changed and why
   - Reference to any related issues

### Commit Message Guidelines

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Keep the first line under 72 characters
- Reference issues and PRs in the body if applicable

Examples:
```
Add cosine similarity caching for improved performance

Implement geographic filtering by department

Fix KeyError when processing museums without themes

Update README with installation instructions
```

### Pull Request Review

- PRs will be reviewed by maintainers
- Address any feedback or requested changes
- Once approved, your PR will be merged

## Reporting Issues

### Bug Reports

When reporting bugs, please include:

1. **Description**: Clear description of the issue
2. **Steps to reproduce**: How to trigger the bug
3. **Expected behavior**: What should happen
4. **Actual behavior**: What actually happens
5. **Environment**:
   - Python version
   - Package versions (`pip freeze`)
   - Operating system
6. **Error messages**: Full traceback if applicable

### Feature Requests

For feature requests, please describe:

1. **The problem** you're trying to solve
2. **The solution** you'd like to see
3. **Alternatives** you've considered
4. **Additional context** (examples, mockups, etc.)

## Questions?

If you have questions about contributing, feel free to:

- Open an issue with the "question" label
- Contact the maintainer directly

Thank you for contributing!
