(219185) SELECT 
	t219185.Id = t219184.Id
FROM [DctSetpointtype(219184)] as t219184 (spt)
		LEFT JOIN (
			[VWellTree(219187)] as t219187 (t2)
				INNER JOIN [DctOu(219189)] as t219189 (tp2) ON ({t219187.ShopId?}? = {t219189.Id})
				LEFT JOIN [UacUsersDatagroup(219192)] as t219192 (cudg) ON ({t219189.Id} = {t219192.DatagroupId} AND {t219192.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(219197)] as t219197 (oudg) ON ({t219189.ParentId?}? = {t219197.DatagroupId} AND {t219197.UserId} = 150 AND {t219197.Inheritablepermission} > 0)
				INNER JOIN [Deviation(219217)] as t219217 (d) ON ({t219187.WellId?}? = {t219217.WellId})
		)  ON ({t219217.SetpointtypeId} = {t219184.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t219192.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t219197.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
