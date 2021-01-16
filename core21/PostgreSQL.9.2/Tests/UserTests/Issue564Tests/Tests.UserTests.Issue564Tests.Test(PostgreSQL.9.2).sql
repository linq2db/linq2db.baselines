BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Parent564"
(
	"Id"          SERIAL  NOT NULL,
	"Type"        text        NULL,
	"StringValue" text        NULL,
	"IntValue"    Int         NULL,

	CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Type_1 Text(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue Text(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type_1,
	:StringValue
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Type_1 Text(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	:Type_1,
	:IntValue
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Parent564"

