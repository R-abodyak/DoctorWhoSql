update Episode  set EpisodeType=EpisodeType+'_Cancelled'
from episode where doctorId is null