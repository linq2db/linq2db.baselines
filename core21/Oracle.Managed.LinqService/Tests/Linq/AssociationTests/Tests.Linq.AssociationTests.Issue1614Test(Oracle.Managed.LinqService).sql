BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "User"
(
	Id Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Resource"
(
	Id                 Int NOT NULL,
	AssociatedObjectId Int NOT NULL,
	AssociationTypeId  Int     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Lookup
(
	Id   Int          NOT NULL,
	Type VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Id, 
	t1.AssociatedObjectId, 
	t1.AssociationTypeId, 
	c_1.Id
FROM
	"Resource" t1
		LEFT JOIN Lookup a_AssociationTypeCode ON t1.AssociationTypeId = a_AssociationTypeCode.Id
		LEFT JOIN "User" c_1 ON a_AssociationTypeCode.Type = 'us' AND c_1.Id = t1.AssociatedObjectId

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Lookup

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Resource"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "User"

