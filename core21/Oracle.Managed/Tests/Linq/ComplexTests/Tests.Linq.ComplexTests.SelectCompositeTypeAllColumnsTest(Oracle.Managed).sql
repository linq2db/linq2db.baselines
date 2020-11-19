BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "User"
(
	"city"            VarChar(255)     NULL,
	"user_name"       VarChar(255)     NULL,
	"street"          VarChar(255)     NULL,
	"building_number" Int          NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "User" ("city", "user_name", "street", "building_number") VALUES ('Springwood','Freddy','Elm Street',13)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."city",
	t1."user_name",
	t1."street",
	t1."building_number"
FROM
	"User" t1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "User"

