﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data Text(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	:ID,
	:Data
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Data Text(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	:ID,
	:Data
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

