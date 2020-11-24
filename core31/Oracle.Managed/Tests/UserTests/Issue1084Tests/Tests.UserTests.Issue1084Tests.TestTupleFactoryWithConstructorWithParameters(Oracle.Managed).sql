BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "i1084_person"
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "i1084_student"
(
	"Id"            Int          NOT NULL,
	"Number"        VarChar(255)     NULL,
	"StatusBitmask" Int          NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "i1084_student"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "i1084_person"

