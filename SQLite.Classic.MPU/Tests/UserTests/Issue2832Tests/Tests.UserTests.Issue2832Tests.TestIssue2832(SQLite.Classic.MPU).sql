(426167) SELECT 
	t426167.Id = t426166.Id
FROM [DctSetpointtype(426166)] as t426166 (spt)
		LEFT JOIN (
			[VWellTree(426169)] as t426169 (t2)
				INNER JOIN [DctOu(426171)] as t426171 (tp2) ON ({t426169.ShopId?}? = {t426171.Id})
				LEFT JOIN [UacUsersDatagroup(426174)] as t426174 (cudg) ON ({t426171.Id} = {t426174.DatagroupId} AND {t426174.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426179)] as t426179 (oudg) ON ({t426171.ParentId?}? = {t426179.DatagroupId} AND {t426179.UserId} = 150 AND {t426179.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426199)] as t426199 (d) ON ({t426169.WellId?}? = {t426199.WellId})
		)  ON ({t426199.SetpointtypeId} = {t426166.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426174.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426179.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
