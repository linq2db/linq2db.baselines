(94957) SELECT 
	t94957.Id = t94956.Id
FROM [DctSetpointtype(94956)] as t94956 (spt)
		LEFT JOIN (
			[VWellTree(94959)] as t94959 (t2)
				INNER JOIN [DctOu(94961)] as t94961 (tp2) ON ({t94959.ShopId?}? = {t94961.Id})
				LEFT JOIN [UacUsersDatagroup(94964)] as t94964 (cudg) ON ({t94961.Id} = {t94964.DatagroupId} AND {t94964.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(94969)] as t94969 (oudg) ON ({t94961.ParentId?}? = {t94969.DatagroupId} AND {t94969.UserId} = 150 AND {t94969.Inheritablepermission} > 0)
				INNER JOIN [Deviation(94989)] as t94989 (d) ON ({t94959.WellId?}? = {t94989.WellId})
		)  ON ({t94989.SetpointtypeId} = {t94956.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t94964.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t94969.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
