(427997) SELECT 
	t427997.Id = t427996.Id
FROM [DctSetpointtype(427996)] as t427996 (spt)
		LEFT JOIN (
			[VWellTree(427999)] as t427999 (t2)
				INNER JOIN [DctOu(428001)] as t428001 (tp2) ON ({t427999.ShopId?}? = {t428001.Id})
				LEFT JOIN [UacUsersDatagroup(428004)] as t428004 (cudg) ON ({t428001.Id} = {t428004.DatagroupId} AND {t428004.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428009)] as t428009 (oudg) ON ({t428001.ParentId?}? = {t428009.DatagroupId} AND {t428009.UserId} = 150 AND {t428009.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428029)] as t428029 (d) ON ({t427999.WellId?}? = {t428029.WellId})
		)  ON ({t428029.SetpointtypeId} = {t427996.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428004.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428009.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
