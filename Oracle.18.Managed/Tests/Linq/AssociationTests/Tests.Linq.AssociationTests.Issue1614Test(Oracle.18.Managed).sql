-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."AssociatedObjectId",
	t1."AssociationTypeId",
	a_User."Id"
FROM
	"Resource" t1
		LEFT JOIN "Lookup" a_AssociationTypeCode ON t1."AssociationTypeId" = a_AssociationTypeCode."Id"
		LEFT JOIN "User" a_User ON a_AssociationTypeCode."Type" = 'us' AND a_User."Id" = t1."AssociatedObjectId"

