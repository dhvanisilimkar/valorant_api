class ApiModal {
  String displayName,
      description,
      developerName,
      displayIconSmall,
      killfeedPortrait,
      fullPortrait,
      background;

  ApiModal(
    this.description,
    this.displayName,
    this.developerName,
    this.displayIconSmall,
    this.fullPortrait,
    this.killfeedPortrait,
    this.background,
  );
  factory ApiModal.fromMap({required Map data}) {
    return ApiModal(
      data['displayName'] ?? '',
      data['description'] ?? '',
      data['developerName'] ?? '',
      data['displayIconSmall'] ?? '',
      data['killfeedPortrait'] ?? '',
      data['fullPortrait'] ?? '',
      data['background'] ?? '',
    );
  }
}

// id,displayName,description,developerName,displayIconSmall,killfeedPortrait,fullPortrait
