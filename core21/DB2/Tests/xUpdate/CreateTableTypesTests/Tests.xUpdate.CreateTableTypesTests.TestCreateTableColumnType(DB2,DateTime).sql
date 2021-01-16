﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CreateTableTypes"
(
	"Id"       Int       NOT NULL,
	"DateTime" timestamp NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DateTime Timestamp(20) -- DateTime
SET     @DateTime = '2000-01-01-00.00.00.000000'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DateTime Timestamp(20) -- DateTime
SET     @DateTime = '2018-11-24-01.02.03.000000'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CreateTableTypes"

