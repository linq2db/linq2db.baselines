(107446) SELECT 
	t107446.Id = t107445.Id
FROM [DctSetpointtype(107445)] as t107445 (spt)
		LEFT JOIN (
			[VWellTree(107448)] as t107448 (t2)
				INNER JOIN [DctOu(107450)] as t107450 (tp2) ON ({t107448.ShopId?}? = {t107450.Id})
				LEFT JOIN [UacUsersDatagroup(107453)] as t107453 (cudg) ON ({t107450.Id} = {t107453.DatagroupId} AND {t107453.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107458)] as t107458 (oudg) ON ({t107450.ParentId?}? = {t107458.DatagroupId} AND {t107458.UserId} = 150 AND {t107458.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107478)] as t107478 (d) ON ({t107448.WellId?}? = {t107478.WellId})
		)  ON ({t107478.SetpointtypeId} = {t107445.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107453.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107458.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
