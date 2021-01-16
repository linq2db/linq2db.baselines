BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereCases"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereCases"
(
	"Id"                Int     NOT NULL,
	"BoolValue"         Boolean NOT NULL,
	"NullableBoolValue" Boolean     NULL,

	CONSTRAINT "PK_WhereCases" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(1,True,NULL),
(2,True,True),
(3,True,NULL),
(4,True,True),
(5,True,True),
(11,False,NULL),
(12,False,False),
(13,False,NULL),
(14,False,False),
(15,False,False)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereCases"

