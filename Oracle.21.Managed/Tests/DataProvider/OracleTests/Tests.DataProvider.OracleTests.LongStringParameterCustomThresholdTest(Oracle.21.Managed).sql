-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p NClob -- Object
SET     @p = 'LongStringValue'

INSERT INTO "BlobsTable" ("Id", "NClob") VALUES (1, :p)

