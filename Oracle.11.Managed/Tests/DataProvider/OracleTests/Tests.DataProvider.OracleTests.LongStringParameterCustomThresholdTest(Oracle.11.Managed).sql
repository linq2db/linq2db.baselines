-- Oracle.11.Managed Oracle11
DECLARE @p NClob -- Object
SET     @p = 'LongStringValue'

INSERT INTO "BlobsTable" ("Id", "NClob") VALUES (1, :p)

