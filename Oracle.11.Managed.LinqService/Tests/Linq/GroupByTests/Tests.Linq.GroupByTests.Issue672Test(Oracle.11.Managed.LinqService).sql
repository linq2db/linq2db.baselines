﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name",
	t1."Enabled",
	t1."ImageFullUrl"
FROM
	(
		SELECT
			sG."Name"
		FROM
			"Stone" sG
		WHERE
			sG."Enabled" = 1 AND sG."Name" NOT LIKE 'level - %' ESCAPE '~' AND
			LENGTH(sG."ImageFullUrl") > 0
		GROUP BY
			sG."Name"
	) sG_1
		INNER JOIN (
			SELECT
				s."Id",
				s."Name",
				s."Enabled",
				s."ImageFullUrl",
				ROW_NUMBER() OVER (PARTITION BY s."Name" ORDER BY s."Name") as "rn"
			FROM
				"Stone" s
			WHERE
				s."Enabled" = 1 AND s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
				LENGTH(s."ImageFullUrl") > 0
		) t1 ON sG_1."Name" = t1."Name" AND t1."rn" <= 1

