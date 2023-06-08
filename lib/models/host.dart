/// Host model.
class Host {
  const Host({
    required this.id,
    required this.name,
    required this.avatarPath,
    required this.rating,
    required this.isSuperhost,
    required this.info,
    this.stats,
  });

  // Current host's id.
  final int id;

  // Host's name.
  final String name;

  // Path to the host's avatar image.
  final String avatarPath;

  /// Average rating.
  final double rating;

  /// Whether or not this host is superhost.
  final bool isSuperhost;

  /// Additional info about the host.
  final HostInfo info;

  /// Host's statistics.
  final HostStats? stats;
}

/// Host's statistics model.
class HostStats {
  const HostStats({
    required this.reviewsCount,
    required this.yearsHosting,
  });

  /// Number of the host's reviews.
  final int reviewsCount;

  /// Years of hosting.
  final int yearsHosting;
}

/// Host's additional info model.
class HostInfo {
  const HostInfo({
    required this.bornIn,
    required this.funFact,
    required this.uniqueness,
  });

  /// A period in which this host was born.
  final String bornIn;

  /// Some fun fact about the host.
  final String funFact;

  /// Statement about why host's apartment is unique.
  final String uniqueness;
}
