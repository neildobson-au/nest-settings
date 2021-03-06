param containerRegistrySettings object = {
  containerRegistryName: ''
  sku: ''
}

resource registry 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: containerRegistrySettings.containerRegistryName
  location: resourceGroup().location 
  tags: {
    displayName: 'Container Registry'
    'container.registry': containerRegistrySettings.containerRegistryName
  }
  sku: {
    name: containerRegistrySettings.sku
  }
  properties: {
    adminUserEnabled: true
  }
}
