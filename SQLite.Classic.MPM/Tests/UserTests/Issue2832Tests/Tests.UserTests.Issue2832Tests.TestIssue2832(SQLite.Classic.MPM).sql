(428009) SELECT 
	t428009.Id = t428008.Id
FROM [DctSetpointtype(428008)] as t428008 (spt)
		LEFT JOIN (
			[VWellTree(428011)] as t428011 (t2)
				INNER JOIN [DctOu(428013)] as t428013 (tp2) ON ({t428011.ShopId?}? = {t428013.Id})
				LEFT JOIN [UacUsersDatagroup(428016)] as t428016 (cudg) ON ({t428013.Id} = {t428016.DatagroupId} AND {t428016.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428021)] as t428021 (oudg) ON ({t428013.ParentId?}? = {t428021.DatagroupId} AND {t428021.UserId} = 150 AND {t428021.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428041)] as t428041 (d) ON ({t428011.WellId?}? = {t428041.WellId})
		)  ON ({t428041.SetpointtypeId} = {t428008.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428016.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428021.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
