﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Data NVarchar2(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	:ID,
	:Data
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Data NVarchar2(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	:ID,
	:Data
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

