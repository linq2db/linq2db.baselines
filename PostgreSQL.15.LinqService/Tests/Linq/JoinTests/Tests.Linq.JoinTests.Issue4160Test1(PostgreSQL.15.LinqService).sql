﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160Person"
(
	"Code" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SH'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160City"
(
	"Code" text     NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SD'
DECLARE @Name Text(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SD'
DECLARE @Name Text(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Code Text(2) -- String
SET     @Code = 'SH'
DECLARE @Name Text(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	(
		SELECT
			cc."Name"
		FROM
			"Issue4160City" cc
		WHERE
			(cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL)
		LIMIT 1
	)
FROM
	"Issue4160Person" pe

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

