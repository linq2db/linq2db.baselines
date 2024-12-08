(491326) SELECT 
	t491326.Id = t491325.Id
FROM [DctSetpointtype(491325)] as t491325 (spt)
		LEFT JOIN (
			[VWellTree(491328)] as t491328 (t2)
				INNER JOIN [DctOu(491330)] as t491330 (tp2) ON ({t491328.ShopId?}? = {t491330.Id})
				LEFT JOIN [UacUsersDatagroup(491333)] as t491333 (cudg) ON ({t491330.Id} = {t491333.DatagroupId} AND {t491333.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491338)] as t491338 (oudg) ON ({t491330.ParentId?}? = {t491338.DatagroupId} AND {t491338.UserId} = 150 AND {t491338.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491358)] as t491358 (d) ON ({t491328.WellId?}? = {t491358.WellId})
		)  ON ({t491358.SetpointtypeId} = {t491325.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491333.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491338.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
