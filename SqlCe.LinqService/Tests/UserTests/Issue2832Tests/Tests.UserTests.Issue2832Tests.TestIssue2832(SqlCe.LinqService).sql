(95004) SELECT 
	t95004.Id = t95003.Id
FROM [DctSetpointtype(95003)] as t95003 (spt)
		LEFT JOIN (
			[VWellTree(95006)] as t95006 (t2)
				INNER JOIN [DctOu(95008)] as t95008 (tp2) ON ({t95006.ShopId?}? = {t95008.Id})
				LEFT JOIN [UacUsersDatagroup(95011)] as t95011 (cudg) ON ({t95008.Id} = {t95011.DatagroupId} AND {t95011.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(95016)] as t95016 (oudg) ON ({t95008.ParentId?}? = {t95016.DatagroupId} AND {t95016.UserId} = 150 AND {t95016.Inheritablepermission} > 0)
				INNER JOIN [Deviation(95036)] as t95036 (d) ON ({t95006.WellId?}? = {t95036.WellId})
		)  ON ({t95036.SetpointtypeId} = {t95003.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t95011.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t95016.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
