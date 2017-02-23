# Report for Description Language
## 1. WDL - Workflow Description language:
The Workflow Description Language is a domain specific language for describing tasks and workflows
#### WebSite : https://software.broadinstitute.org/wdl/
#### Read and Write by human
#### Thera are libraries to interact with this language : wdl4s, java lib, python lib, etc
#### Structure:
  ```   
  task <name_task> {
    <List of inputs> or [input definitions]
    command {
        <command or WS operation>
    }
    output {
        <list of outputs>
    }
  }
  workflow wfName {
    call <task_1>
    call <task_2>
  }
  ```
### Example:
  ```    
    task ps {
      command {
        ps
      }
      output {
        File procs = stdout()
      }
    }

    task cgrep {
      String pattern
      File in_file
      command {
        grep '${pattern}' ${in_file} | wc -l
      }
      output {
        Int count = read_int(stdout())
      }
    }

    task wc {
      File in_file
      command {
        cat ${in_file} | wc -l
      }
      output {
        Int count = read_int(stdout())
      }
    }

    workflow three_step {
      call ps
      call cgrep {
        input: in_file=ps.procs
      }
      call wc {
        input: in_file=ps.procs
      }
    }
```
