﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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

