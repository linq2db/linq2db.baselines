BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InstanceClass"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InstanceClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110),
(11,111),
(12,112),
(13,113),
(14,114),
(15,115),
(16,116),
(17,117),
(18,118),
(19,119),
(20,120)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"InstanceClass" t
WHERE
	Cast(t."Id" as VarChar(11)) || Cast(t."Value" as VarChar(11)) = Cast(t."Id" as VarChar(11)) || Cast(t."Value" as VarChar(11))

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InstanceClass"

