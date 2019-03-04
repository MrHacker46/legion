import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="legion",
    version="0.3.4",
    author="GoVanguard",
    author_email="hello@gvit.com",
    description="Legion, a fork of SECFORCE's Sparta, is an open source, easy-to-use, super-extensible and semi-automated network penetration testing framework that aids in discovery, reconnaissance and exploitation of information systems.",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/GoVanguard/legion",
    packages=['legion'],
    classifiers=(
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU General Public License v2 (GPLv2)',
        'Programming Language :: Python :: 3.6',
        'Operating System :: OS Independent',
    ),
)
