import models.schema.v1 as ac
import models.schema.v1.workload as wl
import models.schema.v1.workload.container as c

# base.k declares reusable configurations for all stacks.
schema YBFE(ac.AppConfiguration):
    """ YBFE基本的AppConfiguration配置 """
    workload: wl.Service {
        containers: {
            "ybfe": c.Container {
                image: imageName
            }
        }
    }
    accessories={}
    """ YBFE抽象的下游配置 """
    imageName: str = "ybfe:v1"