(428000) SELECT 
	t428000.Id = t427999.Id
FROM [DctSetpointtype(427999)] as t427999 (spt)
		LEFT JOIN (
			[VWellTree(428002)] as t428002 (t2)
				INNER JOIN [DctOu(428004)] as t428004 (tp2) ON ({t428002.ShopId?}? = {t428004.Id})
				LEFT JOIN [UacUsersDatagroup(428007)] as t428007 (cudg) ON ({t428004.Id} = {t428007.DatagroupId} AND {t428007.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428012)] as t428012 (oudg) ON ({t428004.ParentId?}? = {t428012.DatagroupId} AND {t428012.UserId} = 150 AND {t428012.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428032)] as t428032 (d) ON ({t428002.WellId?}? = {t428032.WellId})
		)  ON ({t428032.SetpointtypeId} = {t427999.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428007.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428012.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
