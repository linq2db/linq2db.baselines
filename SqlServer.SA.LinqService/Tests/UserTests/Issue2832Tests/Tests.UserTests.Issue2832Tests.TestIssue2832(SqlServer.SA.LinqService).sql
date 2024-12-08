(492157) SELECT 
	t492157.Id = t492156.Id
FROM [DctSetpointtype(492156)] as t492156 (spt)
		LEFT JOIN (
			[VWellTree(492159)] as t492159 (t2)
				INNER JOIN [DctOu(492161)] as t492161 (tp2) ON ({t492159.ShopId?}? = {t492161.Id})
				LEFT JOIN [UacUsersDatagroup(492164)] as t492164 (cudg) ON ({t492161.Id} = {t492164.DatagroupId} AND {t492164.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492169)] as t492169 (oudg) ON ({t492161.ParentId?}? = {t492169.DatagroupId} AND {t492169.UserId} = 150 AND {t492169.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492189)] as t492189 (d) ON ({t492159.WellId?}? = {t492189.WellId})
		)  ON ({t492189.SetpointtypeId} = {t492156.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492164.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t492169.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
