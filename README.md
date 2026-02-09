# Personal CADT Internship Report Template 

## Setup

Install `Typst`

Run

```bash
typst compile report.typ
```

or
```bash
typst watch report.typ
```

## Combine with report cover

Write your report cover in `report_header.docx`.

Export as printing PDF to `output/report_header.pdf`.

Run

```bash
typst compile report.typ output/report_header.pdf
```
Download the library to combine pdf files.
```bash
pip install PyPDF2
```

Run the script to combine the files
```bash
python output/concat.py
```

Result is the file in `output/` named `report.pdf`