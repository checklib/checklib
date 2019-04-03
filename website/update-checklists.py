"""Copy checklist markdown files to website _checklists collection
"""
import glob
import os


def main():
    print("Updating website checklist collection")
    template = """\
---
title: {}
section: {}
description: {}
---

"""
    md_root = os.path.join(
        os.path.dirname(__file__),
        '..',
        'library')
    collection_root = os.path.join(
        os.path.dirname(__file__),
        '_checklists')
    filenames = glob.glob(str(os.path.join(md_root, '**', '*.md')), recursive=True)

    for fname in filenames:
        print(fname)
        with open(fname) as fh:
            lines = list(fh)
            content = "".join(lines)
            title = lines[0][2:].strip()
            description = lines[2].strip()
            section = os.path.basename(os.path.dirname(fname))
            out_fname = "{}_{}".format(
                section, os.path.basename(fname))
            with open(os.path.join(collection_root, out_fname), 'w') as out_fh:
                header = template.format(
                    title, section, description)
                out_fh.write(header)
                out_fh.write(content)



if __name__ == '__main__':
    main()
