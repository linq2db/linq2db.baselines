(243519) SELECT 
	t243519.Id = t243518.Id
FROM [DctSetpointtype(243518)] as t243518 (spt)
		LEFT JOIN (
			[VWellTree(243521)] as t243521 (t2)
				INNER JOIN [DctOu(243523)] as t243523 (tp2) ON ({t243521.ShopId?}? = {t243523.Id})
				LEFT JOIN [UacUsersDatagroup(243526)] as t243526 (cudg) ON ({t243523.Id} = {t243526.DatagroupId} AND {t243526.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243531)] as t243531 (oudg) ON ({t243523.ParentId?}? = {t243531.DatagroupId} AND {t243531.UserId} = 150 AND {t243531.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243551)] as t243551 (d) ON ({t243521.WellId?}? = {t243551.WellId})
		)  ON ({t243551.SetpointtypeId} = {t243518.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243526.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t243531.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
