% Program to do text to speech.
% Get user's sentence
function [speech] = text_2_speech(character)

caUserInput = char(character); % Convert from cell to string.

NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;
Speak(obj, caUserInput);

