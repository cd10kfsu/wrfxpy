import os

def can_read_path(path="/usr/bin"):
    return os.access(path,os.R_OK)

if __name__ == "__main__":
    groups = {
              "nuwrf_build               ": "/fs/ember-fs2/collab/cda/model/nuwrf_dev",
              "nuwrf_chem_build          ": "/fs/ember-fs2/collab/cda/model/nuwrf_dev_chem",
              "nuwrf_static_files        ": "/fs/ember-fs2/collab/nuwrf_data/cases/geog",
              "wrfxpy                    ": "/fs/ember-fs2/collab/cda/work/workspace/wrfxpy",
              "wrfxpy_jobs               ": "/fs/ember-fs2/collab/cda/work/workspace/wrfxpy/jobs",
              "wrfxpy_example_case_nochem": "/fs/ember-fs2/collab/cda/work/workspace/wrfxpy_nuwrf/wfc-base_nuwrf-2025-03-17_12:00:00-09",
             }

    failed = {g: p for g, p in groups.items() if not can_read_path(p)}
    for g, p in groups.items():
        print(f"{'PASSED' if g not in failed else 'FAILED'} | {g} | {p}")

    print("=" * 80)

    if failed:
        print("FAILED paths:\n" + "\n".join(f"{g} | {p}" for g, p in failed.items()))
        print("\nEmail Cheng Da (cda@umd.edu) the failed path access")
    else:
        print("PASSED all path checks")
 
