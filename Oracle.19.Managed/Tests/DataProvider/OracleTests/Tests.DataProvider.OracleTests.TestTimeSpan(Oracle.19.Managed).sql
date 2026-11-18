-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int64
SET     @Id = 2
DECLARE @Duration IntervalDS -- Object
SET     @Duration = 01:00:00

INSERT INTO "t_entity"
(
	"entity_id",
	"duration"
)
VALUES
(
	:Id,
	:Duration
)

