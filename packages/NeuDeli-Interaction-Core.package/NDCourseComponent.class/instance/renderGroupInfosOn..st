rendering
renderGroupInfosOn: html
	self session user isAdmin
		ifTrue: [	html listItem with: [html anchor 
										callback: [self session rootComponent showGroupOverviewComponentwith: self course]; 
										with: [html text: 'Gruppenübersicht']].
			html listItem with: [html anchor
										callback: [self session rootComponent showAllGroupEditComponentwith: (self course)];
										with: [html text: 'Gruppen bearbeiten']].
		
			html listItem with: ('Gruppenwahldeadline: ', self course groupDeadline yyyymmdd).
			html listItem with: ('Maximale Gruppengröße ', self course maximumGroupSize asString)]