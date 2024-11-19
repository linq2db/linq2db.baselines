Parameters:
@__date_0='?' (DbType = DateTime2)

SELECT e."Id", e."Duration", e."Name"
FROM "Events" AS e
WHERE e."Duration" @> @__date_0 OR lower(e."Duration") = @__date_0 OR upper(e."Duration") = @__date_0 OR isempty(e."Duration") OR isempty(e."Duration" * e."Duration")


