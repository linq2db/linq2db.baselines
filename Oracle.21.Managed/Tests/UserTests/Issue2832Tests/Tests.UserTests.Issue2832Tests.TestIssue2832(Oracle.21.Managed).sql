(140045) SELECT 
	t140045.Id = t140044.Id
FROM [DctSetpointtype(140044)] as t140044 (spt)
		LEFT JOIN (
			[VWellTree(140047)] as t140047 (t2)
				INNER JOIN [DctOu(140049)] as t140049 (tp2) ON ({t140047.ShopId?}? = {t140049.Id})
				LEFT JOIN [UacUsersDatagroup(140052)] as t140052 (cudg) ON ({t140049.Id} = {t140052.DatagroupId} AND {t140052.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140057)] as t140057 (oudg) ON ({t140049.ParentId?}? = {t140057.DatagroupId} AND {t140057.UserId} = 150 AND {t140057.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140077)] as t140077 (d) ON ({t140047.WellId?}? = {t140077.WellId})
		)  ON ({t140077.SetpointtypeId} = {t140044.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140052.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140057.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
