
import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

const App = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Raizion Privacy Control</Text>
      <Button title="Activate Sanctuary Mode" onPress={() => {}} />
      <Button title="Lock Camera Access" onPress={() => {}} />
      <Button title="Aura & Dressing Mode" onPress={() => {}} />
      <Button title="Scan for Hidden Devices" onPress={() => {}} />
      <Button title="Emergency Alert" onPress={() => {}} />
      <Text style={styles.footer}>Voice commands also supported</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    padding: 20
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center'
  },
  footer: {
    marginTop: 40,
    fontStyle: 'italic',
    textAlign: 'center'
  }
});

export default App;
