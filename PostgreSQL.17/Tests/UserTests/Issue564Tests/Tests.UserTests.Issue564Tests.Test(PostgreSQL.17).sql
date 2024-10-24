﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Parent564"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Parent564"
(
	"Id"          SERIAL  NOT NULL,
	"Type"        text        NULL,
	"StringValue" text        NULL,
	"IntValue"    Int         NULL,

	CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Type Text(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue Text(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type,
	:StringValue
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Type Text(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	:Type,
	:IntValue
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent564" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Parent564"

