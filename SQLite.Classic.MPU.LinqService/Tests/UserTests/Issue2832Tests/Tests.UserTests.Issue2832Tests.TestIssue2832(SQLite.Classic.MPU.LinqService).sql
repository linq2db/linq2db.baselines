(428152) SELECT 
	t428152.Id = t428151.Id
FROM [DctSetpointtype(428151)] as t428151 (spt)
		LEFT JOIN (
			[VWellTree(428154)] as t428154 (t2)
				INNER JOIN [DctOu(428156)] as t428156 (tp2) ON ({t428154.ShopId?}? = {t428156.Id})
				LEFT JOIN [UacUsersDatagroup(428159)] as t428159 (cudg) ON ({t428156.Id} = {t428159.DatagroupId} AND {t428159.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428164)] as t428164 (oudg) ON ({t428156.ParentId?}? = {t428164.DatagroupId} AND {t428164.UserId} = 150 AND {t428164.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428184)] as t428184 (d) ON ({t428154.WellId?}? = {t428184.WellId})
		)  ON ({t428184.SetpointtypeId} = {t428151.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428159.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428164.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
