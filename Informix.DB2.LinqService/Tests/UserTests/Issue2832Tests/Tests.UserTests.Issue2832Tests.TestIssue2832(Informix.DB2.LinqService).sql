(155921) SELECT 
	t155921.Id = t155920.Id
FROM [DctSetpointtype(155920)] as t155920 (spt)
		LEFT JOIN (
			[VWellTree(155923)] as t155923 (t2)
				INNER JOIN [DctOu(155925)] as t155925 (tp2) ON ({t155923.ShopId?}? = {t155925.Id})
				LEFT JOIN [UacUsersDatagroup(155928)] as t155928 (cudg) ON ({t155925.Id} = {t155928.DatagroupId} AND {t155928.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155933)] as t155933 (oudg) ON ({t155925.ParentId?}? = {t155933.DatagroupId} AND {t155933.UserId} = 150 AND {t155933.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155953)] as t155953 (d) ON ({t155923.WellId?}? = {t155953.WellId})
		)  ON ({t155953.SetpointtypeId} = {t155920.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155928.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155933.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
