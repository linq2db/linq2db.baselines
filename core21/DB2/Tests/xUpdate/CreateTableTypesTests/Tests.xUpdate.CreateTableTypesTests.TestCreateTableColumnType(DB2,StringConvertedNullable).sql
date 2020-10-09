﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int            NOT NULL,
	"StringConverted" NVarChar(8168)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringConverted VarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StringConverted VarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Id", 
	"t1"."StringConverted"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CreateTableTypes"

