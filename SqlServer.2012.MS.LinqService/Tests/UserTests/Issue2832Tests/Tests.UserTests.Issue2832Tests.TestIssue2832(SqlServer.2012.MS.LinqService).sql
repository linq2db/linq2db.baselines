(241223) SELECT 
	t241223.Id = t241222.Id
FROM [DctSetpointtype(241222)] as t241222 (spt)
		LEFT JOIN (
			[VWellTree(241225)] as t241225 (t2)
				INNER JOIN [DctOu(241227)] as t241227 (tp2) ON ({t241225.ShopId?}? = {t241227.Id})
				LEFT JOIN [UacUsersDatagroup(241230)] as t241230 (cudg) ON ({t241227.Id} = {t241230.DatagroupId} AND {t241230.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(241235)] as t241235 (oudg) ON ({t241227.ParentId?}? = {t241235.DatagroupId} AND {t241235.UserId} = 150 AND {t241235.Inheritablepermission} > 0)
				INNER JOIN [Deviation(241255)] as t241255 (d) ON ({t241225.WellId?}? = {t241255.WellId})
		)  ON ({t241255.SetpointtypeId} = {t241222.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t241230.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t241235.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
